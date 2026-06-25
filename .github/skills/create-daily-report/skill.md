---
name: create-daily-report
description: "Generate a daily/periodic diff report for a fixed set of GitHub repositories (microsoft/agent-framework, dotnet/aspnetcore, Azure/azure-functions-dotnet-worker, dotnet/extensions, runceel/ReactiveProperty, microsoft/aspire), GitHub Changelog RSS, and Azure release announcements RSS, comparing against the previous run recorded in timestamp.md. Use this when the user asks for a daily check, daily-check report, 差分レポート, 前回からの差分, デイリーチェック, or otherwise requests an update summary across these repos and Azure updates. The workflow runs as a mechanical, file-by-file loop (`-Next`) so the report can be filled in small, well-defined steps without dropping quality — robust even when driven by a less capable model. The skill delegates to .github/skills/create-daily-report/scripts/Invoke-DailyCheckReport.ps1, writes split day-folder reports under reports/{yyyy}/{MM}/{dd}/ (folder date is JST/Asia-Tokyo), and updates timestamp.md on success while optionally committing and pushing the result. The skill definition and operation guidance are in English, while the report content itself must remain in Japanese."
---

# Daily Check Report Skill

This skill automates the core workflow of this repository (`runceel/daily-check`): generating a diff report from the previous checkpoint across selected GitHub repositories, GitHub Changelog RSS, and Azure release-announcement RSS.

Data collection and scaffolding are deterministic in `Invoke-DailyCheckReport.ps1`. The writer (human or model) should follow a strict one-file-at-a-time loop via `-Next`.

## Language policy

- **Skill definition and operational guidance: English**
- **Report output content (`reports/.../*.md`): Japanese**

When replacing `<!-- TODO ... -->` markers in report files, always write natural Japanese explanations.

## When to use

Use this skill when the user asks for daily-check updates or incremental diffs, for example:

- "daily check report"
- "差分レポート"
- "前回からの差分"
- "デイリーチェック"
- Any request to summarize updates across the configured repos + Azure/GitHub feeds

## Deliverables

1. Generate/fill files under `reports/{yyyy}/{MM}/{dd}/`:
   `index.md`, `azure.md`, `github-changelog.md`, `agent-framework.md`, `aspnetcore.md`,
   `azure-functions-dotnet-worker.md`, `extensions.md`, `reactiveproperty.md`, `aspire.md`
2. Update repository-root `timestamp.md` with generation timestamp (UTC, `yyyy-MM-dd HH:mm:ss`) **only in `-Finalize`**
3. Optionally commit/push report + timestamp in `-Finalize` (or skip with flags)

## Workflow (3 phases)

1. Scaffold generation (default run, non-destructive)
2. File-by-file completion loop (`-Next`)
3. Finalization (`-Finalize`)

Default generation does not update `timestamp.md` and does not commit.

## Delegation policy

This skill may use cheaper sub-agents for localized drafting, but the parent agent must retain ownership of the report workflow.

- Parent agent responsibilities:
  - Run scaffold generation, `-Next`, `-Status`, `-ValidateOnly`, and `-Finalize`.
  - Decide the next work item from `-Next` and apply edits to report files.
  - Ensure important changes are not missed, especially when GitHub collection is truncated.
  - Write or review `index.md`, because it requires cross-file synthesis and previous memo carry-over.
  - Perform final validation and timestamp/commit/push decisions.
- Sub-agent responsibilities:
  - Draft localized Japanese prose for one bounded unit: a feed item, one summary repo section, or one detailed PR block.
  - Use only the context provided by the parent agent (`-Next` JSON, relevant file excerpt, and acceptance criteria).
  - Return draft text and rationale; do not run `-Next`, `-Finalize`, commit, push, or edit files directly unless the parent explicitly delegates that exact file in the same session.
- New project sessions may be used only for research or drafting. Avoid multiple sessions editing the same report files; if a separate session is used, the parent session applies the final text to prevent conflicts.
- Cheap models are appropriate for local item summaries. Use a stronger model or parent review for `index.md`, important-change triage, conflict resolution, and validation failures.

## Commands

### 1. Generate scaffold (default, non-destructive)

```pwsh
pwsh ./.github/skills/create-daily-report/scripts/Invoke-DailyCheckReport.ps1
```

### 2. Fill one file at a time (`-Next`)

```pwsh
pwsh ./.github/skills/create-daily-report/scripts/Invoke-DailyCheckReport.ps1 -Next
```

`-Next` is read-only and returns the next pending unit with acceptance criteria.

Rules:
- Follow phase order: fact files first (`azure`, `github-changelog`, repo files), then `index.md` last.
- Replace all `<!-- TODO ... -->` markers and required empty bullets in the target file.
- **Write report prose in Japanese**.
- Important changes (breaking/security/deprecation/GA) are never subject to the detailed-PR count cap. In detailed repos, all important merged PRs must be expanded and filled; regular merged PRs only fill the remaining detail slots.
- Repeat `-Next` until it returns "no remaining work" (exit code `0`).
- Use `-Next -Json` for machine-readable output.

### 3. Optional checks

```pwsh
pwsh ./.github/skills/create-daily-report/scripts/Invoke-DailyCheckReport.ps1 -Status
pwsh ./.github/skills/create-daily-report/scripts/Invoke-DailyCheckReport.ps1 -ValidateOnly
```

### 4. Finalize (validate + timestamp + commit/push)

```pwsh
pwsh ./.github/skills/create-daily-report/scripts/Invoke-DailyCheckReport.ps1 -Finalize
```

`-Finalize` does not regenerate files. It validates unresolved markers/content quality checks, advances `timestamp.md` using `index.md` meta, then commits/pushes unless skipped.

## Loop safety

- Detect no-progress loops with `fingerprint` from `-Next`:
  same file + same fingerprint after edits means no progress.
- Practical loop cap: around `number_of_files + 3` iterations (about 12 max).
- If `-Next` returns `missing-file`, rerun default generation (without `-Force`).

## Authoring guardrails

- Do not guess completion; trust `-Next`/`-Status`.
- Do not write `index.md` summary before fact files are complete.
- Do not fabricate trends on quiet days.
- Do not casually use `-Force` (it can overwrite completed content).
- Do not modify/remove `<!-- daily-check-meta: ... -->` in `index.md`.
- If finalize fails, fix the reported sections and rerun.

## Collection modes

| owner/repo | mode | output file |
| --- | --- | --- |
| `microsoft/agent-framework` | detailed | `agent-framework.md` |
| `microsoft/aspire` | detailed | `aspire.md` |
| `dotnet/aspnetcore` | summary | `aspnetcore.md` |
| `Azure/azure-functions-dotnet-worker` | summary | `azure-functions-dotnet-worker.md` |
| `dotnet/extensions` | summary | `extensions.md` |
| `runceel/ReactiveProperty` | summary | `reactiveproperty.md` |

## Script options

- default (no option): scaffold generation (non-destructive)
- `-Next`: next pending unit (read-only), exit `0/1/2`
- `-Json`: JSON output for `-Next`
- `-Status`: status summary (read-only), exit `0/1/2`
- `-ValidateOnly`: validate markers/content checks only
- `-Finalize`: validate + timestamp update + commit/push
- `-Force`: force scaffold regeneration ignoring completed-file protection
- `-DryRun`: no file updates, no commit/push
- `-SkipCommit`: skip commit during finalize
- `-SkipPush`: skip push during finalize
- `-SkipGitHub`: skip `gh` calls (offline/rate-limit mode)
- `-GeneratedAtUtc "yyyy-MM-dd HH:mm:ss"`: override generation timestamp (UTC);
  report folder/title date is based on JST conversion of this UTC value

`-Next`, `-Status`, `-ValidateOnly`, and `-Finalize` are mutually exclusive.

## Related files

- [`./references/report-template.md`](./references/report-template.md): canonical report format reference
- [`./references/quality-rules.md`](./references/quality-rules.md): acceptance criteria and writing quality rules
- `timestamp.md` at repo root: previous checkpoint timestamp
- `.tmp/` at repo root: temporary RSS/XML/JSON artifacts
