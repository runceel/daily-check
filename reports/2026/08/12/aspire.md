# microsoft/aspire *(詳細モード)*

対象期間: 2026-08-03 02:16:33 〜 2026-08-11 23:30:11 (UTC)

## 統計サマリー

| 区分                    | 件数 |
| ----------------------- | ---- |
| マージ済み PR           | 104 |
| オープン中の新規 PR     | 85 |
| クローズ (未マージ) PR  | 14 |
| 新規 Issue              | 104 |
| クローズ Issue          | 64 |
| 主要コントリビューター  | adamint, IEvangelist, sebastienros, aspire-repo-bot[bot], JamesNK, karolz-ms |

## ⚠ 重要な変更（要確認）

<!-- タイトル/本文/ラベルからの自動判定です。誤検出はこの箇条書きごと削除可。各項目の影響を1行で補い、TODO コメントを消してください。 -->
- **⚠ 破壊的変更** [#19077](https://github.com/microsoft/aspire/pull/19077) — Expose resolved environment variables to debug launch producers （PR / open / adamint）
  デバッグ起動プロデューサーを利用する開発者は、解決済み環境変数の公開範囲と既存の起動設定への影響を確認してください。
- **⚠ 破壊的変更** [#18991](https://github.com/microsoft/aspire/pull/18991) — Remove misleading TerminalOptions.Shell no-op （PR / merged / mitchdenny）
  `TerminalOptions.Shell` を設定していた利用者は、無効な no-op に依存していないか確認し、後述の API 整理へ対応してください。
- **⚠ 破壊的変更** [#18692](https://github.com/microsoft/aspire/pull/18692) — Update Foundry hosted agent protocol payload （PR / merged / tommasodotNET）
  Foundry hosted agent のプロトコル連携を実装する利用者は、更新された payload 形式とサーバー・クライアント双方の互換性を確認してください。
- **⚠ セキュリティ** [#19248](https://github.com/microsoft/aspire/pull/19248) — Redact owning resource's own secret env var in `describe` （PR / open / IEvangelist）
  `aspire describe` の出力を共有する利用者は、秘密環境変数の秘匿修正を取り込み、ログや診断情報の公開範囲を確認してください。
- **⚠ セキュリティ** [#19231](https://github.com/microsoft/aspire/pull/19231) — [auto-sec] extension: js-yaml 4.3.0 -> 4.3.1 (GHSA-5p4m-2wfm-xmqj) （PR / merged / IEvangelist）
  VS Code 拡張の依存利用者は `js-yaml` 4.3.1 へ更新し、GHSA 対応済みのロックファイルを取り込んでください。
- **⚠ セキュリティ** [#19123](https://github.com/microsoft/aspire/pull/19123) — [auto-sec] remove js-yaml from 9 npm manifests (GHSA-5p4m-2wfm-xmqj); 2 deferred （PR / merged / IEvangelist）
  JavaScript テンプレート利用者は `js-yaml` の除去・更新結果と、延期された 2 マニフェストの残存リスクを確認してください。
- **⚠ セキュリティ** [#19122](https://github.com/microsoft/aspire/pull/19122) — [auto-sec] aspire npm low-risk batch: fast-uri 3.1.5, nanoid 3.3.17, hono 4.12.34 （PR / merged / IEvangelist）
  Aspire の npm テンプレート・拡張利用者は、更新された `fast-uri`、`nanoid`、`hono` のロックファイルを再生成してください。
- **⚠ セキュリティ** [#19053](https://github.com/microsoft/aspire/pull/19053) — [auto-sec] npm: @angular 21.2.19 + brace-expansion 5.0.9 (frontend cluster) （PR / merged / IEvangelist）
  Angular フロントエンドのテンプレートを配布する担当者は、更新済み依存関係を取り込み、生成アプリのビルドを確認してください。
- **⚠ セキュリティ** [#19052](https://github.com/microsoft/aspire/pull/19052) — [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5) （PR / open / IEvangelist）
  Foundry playground の利用者は `cryptography` 更新 PR の適用状況を確認し、未適用環境の脆弱性対応を優先してください。
- **⚠ セキュリティ** [#19006](https://github.com/microsoft/aspire/pull/19006) — Bump the uv group across 2 directories with 1 update （PR / closed / dependabot[bot]）
  uv 管理の依存関係を使う playground 利用者は、クローズされた更新が未適用でないか手動で確認してください。
- **⚠ セキュリティ** [#18995](https://github.com/microsoft/aspire/pull/18995) — [auto-sec] Consolidate aspire low-risk dependency security remediations (npm/pip/yarn) （PR / merged / IEvangelist）
  npm/pip/yarn のテンプレート利用者は、統合された低リスク脆弱性修正と依存ロック更新を取り込んでください。
- **⚠ セキュリティ** [#18983](https://github.com/microsoft/aspire/pull/18983) — Bump the npm_and_yarn group across 9 directories with 9 updates （PR / closed / dependabot[bot]）
  クローズ済みの一括更新が未反映の npm/yarn マニフェストについて、代替の修正版を確認してください。
- **⚠ セキュリティ** [#18858](https://github.com/microsoft/aspire/pull/18858) — [auto-sec] Consolidate Aspire JavaScript template dependency security remediations （PR / merged / IEvangelist）
  JavaScript テンプレートの利用者は、各 playground の lockfile と ESLint・npm 依存更新を取り込んでください。
- **⚠ セキュリティ** [#17902](https://github.com/microsoft/aspire/pull/17902) — [security] Bump aiohttp and starlette in FoundryAgentBasic playground （PR / closed / IEvangelist）
  FoundryAgentBasic playground の利用者は、クローズ済み更新が未適用の場合に `aiohttp` と `starlette` の安全なバージョンを確認してください。
- **⚠ セキュリティ** [#14882](https://github.com/microsoft/aspire/pull/14882) — Add File input type to the Interaction Service （PR / merged / mcumming）
  Interaction Service の File 入力を扱う利用者は、入力内容の検証と保存先のアクセス制御を確認してください。
- **非推奨/廃止** [#19090](https://github.com/microsoft/aspire/pull/19090) — Mark ResourceUrlAnnotation.DisplayOrder as obsolete （PR / merged / Copilot）
  `ResourceUrlAnnotation.DisplayOrder` を参照する利用者は、非推奨警告を確認し、代替の表示順制御へ移行してください。
- **非推奨/廃止** [#19022](https://github.com/microsoft/aspire/pull/19022) — Bump the npm_and_yarn group across 1 directory with 2 updates （PR / closed / dependabot[bot]）
  クローズされた npm/yarn 更新が未適用のテンプレートについて、安全な代替バージョンを確認してください。
- **非推奨/廃止** [#18650](https://github.com/microsoft/aspire/issues/18650) — [AspireE2E] AppHost fails to resolve Aspire CLI bundle until Aspire CLI is initialized via 'aspire new' （Issue / closed / joniel-bolocon）
  E2E 実行時に CLI 初期化が必要だった問題はクローズ済みのため、利用者は修正版で AppHost の初期化手順を再確認してください。

## このリポジトリの要点

今週は JavaScript / Python 依存関係の **セキュリティ修正** が多数入り、`js-yaml` の除去・更新や npm/pip/yarn の lockfile 整理が中心でした。  
`TerminalOptions.Shell` の no-op 削除と Foundry hosted agent payload 更新は、利用者が確認すべき互換性変更です。  
`ResourceUrlAnnotation.DisplayOrder` の非推奨化も進み、テンプレート利用者は依存更新と API 移行を並行して確認する必要があります。

## 主要な PR (詳細)

> **重要度の高いマージ済み PR（破壊的変更/セキュリティ/非推奨/GA）は件数制限の対象外として全件**、それに加えて通常のマージ済み PR を合計 6 件程度になるまで補完し、`gh pr view` で取得した変更ファイル / コミット情報を `<details>` に事前展開しています。各 PR の「変更概要」「コミットレベルの詳細」「既存利用者への影響」を日本語で追記してください。

### [#18991](https://github.com/microsoft/aspire/pull/18991) — Remove misleading TerminalOptions.Shell no-op

- 作者: mitchdenny / 状態: MERGED
- ラベル: `breaking-change` `needs-area-label`
- 変更行数: +30 / -51
- マージ日時 (UTC): `2026-08-04 23:05:13`

**変更概要**

`TerminalOptions.Shell` が実際には何もしない設定だったため、誤解を招く API と内部引数処理を削除しました。  
ターミナル起動引数と関連テストを整理し、レガシー引数の受け入れを含む移行経路も調整しています。  
ターミナルをカスタマイズする AppHost 利用者が影響範囲です。

<details><summary>変更ファイル (6 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/TerminalAnnotation.cs` | 0 | 9 |
| `src/Aspire.Hosting/TerminalResourceBuilderExtensions.cs` | 2 | 9 |
| `src/Aspire.TerminalHost/TerminalHostApp.cs` | 3 | 12 |
| `src/Aspire.TerminalHost/TerminalHostArgs.cs` | 6 | 11 |
| `tests/Aspire.Hosting.Tests/WithTerminalTests.cs` | 3 | 6 |
| `tests/Aspire.TerminalHost.Tests/TerminalHostArgsTests.cs` | 16 | 4 |

</details>

<details><summary>コミット (4 件)</summary>

- `9efa994` Remove misleading TerminalOptions.Shell no-op
- `c554c42` Adapt terminal shell fix to API cleanup
- `2430a7f` Merge remote-tracking branch 'origin/main' into mitchdenny-fix-termin…
- `87c1394` Accept legacy terminal shell argument

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

⚠ **破壊的変更**: `TerminalOptions.Shell` と関連する no-op の設定・引数処理を削除しました。旧引数は一時的に受け入れるテストがありますが、Shell 切り替え API としては利用できません。

**既存利用者への影響**

`TerminalOptions.Shell` を設定している利用者は、その設定を削除し、実際に必要なシェル指定を新しい起動方式へ移してください。

### [#19231](https://github.com/microsoft/aspire/pull/19231) — [auto-sec] extension: js-yaml 4.3.0 -> 4.3.1 (GHSA-5p4m-2wfm-xmqj)

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-vscode-extension` `automated-security`
- 変更行数: +5 / -5
- マージ日時 (UTC): `2026-08-11 15:50:51`

**変更概要**

VS Code 拡張の `js-yaml` を 4.3.0 から 4.3.1 へ更新し、GHSA-5p4m-2wfm-xmqj に対応しました。  
`package.json` と `yarn.lock` のみを更新する小規模な依存修正です。  
拡張のビルド・配布経路が影響範囲ですが、利用者向け API は変わりません。

<details><summary>変更ファイル (2 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/package.json` | 1 | 1 |
| `extension/yarn.lock` | 4 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `f1f4acf` [auto-sec] extension: js-yaml 4.3.0 -> 4.3.1 (GHSA-5p4m-2wfm-xmqj)

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 API や拡張機能の設定形式は変更せず、`js-yaml` の解決バージョンだけをセキュリティ修正版へ更新しました。

**既存利用者への影響**

利用者の移行は不要です。拡張を再ビルド・再配布する場合は新しい lockfile を使ってください。

### [#19123](https://github.com/microsoft/aspire/pull/19123) — [auto-sec] remove js-yaml from 9 npm manifests (GHSA-5p4m-2wfm-xmqj); 2 deferred

- 作者: IEvangelist / 状態: MERGED
- ラベル: `area-templates` `automated-security`
- 変更行数: +5842 / -4564
- マージ日時 (UTC): `2026-08-10 17:34:38`

**変更概要**

9 個の npm マニフェストから脆弱な `js-yaml` の直接依存を除去・更新しました。  
lockfile を再生成し、ESLint 設定の整理や npm レジストリ URL の修正も行っています。  
2 マニフェストは延期されているため、テンプレートを利用する場合は残存依存を確認してください。

<details><summary>変更ファイル (31 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/.eslintrc.cjs` | 0 | 18 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/eslint.config.js` | 29 | 0 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/package-lock.json` | 244 | 484 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/package.json` | 7 | 7 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/.eslintrc.cjs` | 0 | 15 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/eslint.config.js` | 15 | 0 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/package-lock.json` | 264 | 558 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/package.json` | 5 | 7 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/src/components/TheWelcome.vue` | 2 | 4 |
| `playground/FoundryAgentEnterprise/frontend/eslint.config.js` | 2 | 1 |
| `playground/FoundryAgentEnterprise/frontend/package-lock.json` | 770 | 666 |
| `playground/FoundryAgentEnterprise/frontend/package.json` | 6 | 7 |
| `playground/JavaAppHost/frontend/eslint.config.js` | 2 | 1 |
| `playground/JavaAppHost/frontend/package-lock.json` | 737 | 465 |
| `playground/JavaAppHost/frontend/package.json` | 6 | 7 |
| _... 他 16 件_ | | |

</details>

<details><summary>コミット (4 件)</summary>

- `7d8267e` [auto-sec] js-yaml 4.3.0->5.2.2 (major, GHSA-5p4m-2wfm-xmqj)
- `84d8cf1` Defer extension js-yaml bump; keep npm manifests at 5.2.2
- `ee82393` Fix js-yaml resolved URL to public npm registry
- `6492f0d` Address js-yaml compatibility feedback

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

主な変更は JavaScript の `package.json` / lockfile と ESLint 設定で、Aspire の .NET API シグネチャは変更していません。`js-yaml` は 5.2.2 系へ解決され、一部更新は互換性確認のため延期されています。

**既存利用者への影響**

テンプレートを新規生成する利用者は更新済みマニフェストを使用してください。既存アプリは lockfile を再生成し、延期された依存の修正状況を別途確認してください。

### [#19122](https://github.com/microsoft/aspire/pull/19122) — [auto-sec] aspire npm low-risk batch: fast-uri 3.1.5, nanoid 3.3.17, hono 4.12.34

- 作者: IEvangelist / 状態: MERGED
- ラベル: `needs-area-label` `automated-security`
- 変更行数: +29 / -24
- マージ日時 (UTC): `2026-08-10 13:07:32`

**変更概要**

`fast-uri`、`nanoid`、`hono` を複数の Aspire playground・拡張・E2E フィクスチャで更新しました。  
セキュリティ修正版を lockfile と package manifest に反映し、解決 URL も公開 npm レジストリへ統一しています。  
JavaScript テンプレートの依存解決とテスト環境が影響範囲です。

<details><summary>変更ファイル (12 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/package.json` | 1 | 1 |
| `extension/yarn.lock` | 4 | 4 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package-lock.json` | 6 | 6 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package.json` | 2 | 1 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package-lock.json` | 3 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package.json` | 1 | 0 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/package-lock.json` | 3 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/package.json` | 1 | 0 |
| `playground/BrowserTelemetry/BrowserTelemetry.Web/package-lock.json` | 3 | 3 |
| `playground/BrowserTelemetry/BrowserTelemetry.Web/package.json` | 1 | 0 |
| `tests/Aspire.Cli.EndToEnd.Tests/Fixtures/JsPublish/nextjs/package-lock.json` | 3 | 3 |
| `tests/Aspire.Cli.EndToEnd.Tests/Fixtures/JsPublish/nextjs/package.json` | 1 | 0 |

</details>

<details><summary>コミット (3 件)</summary>

- `4220c61` [auto-sec] fast-uri 3.1.4->3.1.5 across playground + extension (GHSA-…
- `002ba93` security(deps): fold nanoid 3.3.17 + hono 4.12.34 into low-risk batch
- `8f9e463` fix(ci): point bumped-package resolved URLs at registry.npmjs.org

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

JavaScript パッケージのバージョンと解決 URL の更新のみで、Aspire の公開 .NET API 変更はありません。

**既存利用者への影響**

アプリのコード移行は不要ですが、テンプレートや playground の依存を配布する場合は更新済み lockfile を再生成してください。

### [#19053](https://github.com/microsoft/aspire/pull/19053) — [auto-sec] npm: @angular 21.2.19 + brace-expansion 5.0.9 (frontend cluster)

- 作者: IEvangelist / 状態: MERGED
- ラベル: `needs-area-label` `automated-security`
- 変更行数: +310 / -371
- マージ日時 (UTC): `2026-08-07 01:06:19`

**変更概要**

Angular フロントエンド群の `@angular` を 21.2.19、`brace-expansion` を 5.0.9 へ更新しました。  
package.json と lockfile を同期し、テンプレートの依存脆弱性を修正しています。  
Angular ベースの Aspire フロントエンドを生成・ビルドする利用者が影響を受けます。

<details><summary>変更ファイル (4 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package-lock.json` | 282 | 343 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package.json` | 23 | 23 |
| `tests/PolyglotAppHosts/TypeScript.PackageManagers.Yarn/TypeScript/package.json` | 1 | 1 |
| `tests/PolyglotAppHosts/TypeScript.PackageManagers.Yarn/TypeScript/yarn.lock` | 4 | 4 |

</details>

<details><summary>コミット (1 件)</summary>

- `038f09d` [auto-sec] npm: @angular 21.2.19 + brace-expansion 5.0.9

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

変更は Angular / npm 依存と lockfile に限定され、Aspire の .NET API やアプリケーション契約は変更していません。

**既存利用者への影響**

既存アプリは lockfile を更新して再インストールし、Angular のビルドとテストを確認してください。コード変更は通常不要です。

### [#18995](https://github.com/microsoft/aspire/pull/18995) — [auto-sec] Consolidate aspire low-risk dependency security remediations (npm/pip/yarn)

- 作者: IEvangelist / 状態: MERGED
- ラベル: `needs-area-label` `automated-security`
- 変更行数: +226 / -202
- マージ日時 (UTC): `2026-08-04 23:40:00`

**変更概要**

Aspire の npm/pip/yarn 依存に対する低リスクのセキュリティ修正をまとめて適用しました。  
拡張、JavaScript playground、Foundry playground の manifest と lockfile を更新し、暗号ライブラリの大きな更新は延期しています。  
テンプレートから生成される開発環境の依存関係が主な影響範囲です。

<details><summary>変更ファイル (36 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `extension/package.json` | 7 | 6 |
| `extension/src/test/e2eLaunchProfile.test.ts` | 2 | 2 |
| `extension/yarn.lock` | 56 | 35 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package-lock.json` | 15 | 15 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package.json` | 6 | 4 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package-lock.json` | 3 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package.json` | 1 | 1 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/package-lock.json` | 3 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/package.json` | 1 | 1 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/package-lock.json` | 3 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vue/package.json` | 1 | 1 |
| `playground/FoundryAgentBasic/app/uv.lock` | 67 | 67 |
| `playground/FoundryAgentEnterprise/frontend/package-lock.json` | 3 | 3 |
| `playground/FoundryAgentEnterprise/frontend/package.json` | 1 | 1 |
| `playground/JavaAppHost/frontend/package-lock.json` | 3 | 3 |
| _... 他 21 件_ | | |

</details>

<details><summary>コミット (3 件)</summary>

- `bc50c60` [auto-sec] Remediate low-risk dependency alerts (npm/pip/yarn)
- `9c90fe0` Defer cryptography 50 update
- `3155968` Use mirrored fast-uri security fix

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開 .NET API の変更はなく、npm/pip/yarn の依存バージョン、lockfile、依存解決 URL を更新しました。`cryptography` 50 への更新は延期されています。

**既存利用者への影響**

アプリコードの移行は不要ですが、生成済みテンプレートは依存を再インストールし、延期された暗号ライブラリの脆弱性対応を確認してください。

### [#18858](https://github.com/microsoft/aspire/pull/18858) — [auto-sec] Consolidate Aspire JavaScript template dependency security remediations

- 作者: IEvangelist / 状態: MERGED
- ラベル: `needs-area-label` `automated-security`
- 変更行数: +10651 / -9723
- マージ日時 (UTC): `2026-08-04 10:07:10`

**変更概要**

Aspire の JavaScript テンプレート全体で依存関係のセキュリティ修正を統合しました。  
npm lockfile、ESLint 設定、Corepack / safe npm tool の仕様と検証用 Dockerfile を更新しています。  
Angular、React、Vue、Node などの polyglot テンプレートの生成結果が影響範囲です。

<details><summary>変更ファイル (100 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `.github/workflows/polyglot-validation/Dockerfile.typescript` | 12 | 8 |
| `.gitignore` | 1 | 0 |
| `docs/specs/npm-cli-package.md` | 1 | 1 |
| `docs/specs/safe-npm-tool-install.md` | 34 | 42 |
| `extension/package.json` | 5 | 0 |
| `extension/scripts/prepareCorepackYarn.mjs` | 1 | 1 |
| `extension/yarn.lock` | 7 | 20 |
| `playground/AspireWithBun/package-lock.json` | 33 | 33 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package-lock.json` | 1118 | 1126 |
| `playground/AspireWithJavaScript/AspireJavaScript.Angular/package.json` | 9 | 3 |
| `playground/AspireWithJavaScript/AspireJavaScript.NodeApp/package-lock.json` | 140 | 118 |
| `playground/AspireWithJavaScript/AspireJavaScript.NodeApp/package.json` | 7 | 1 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package-lock.json` | 479 | 479 |
| `playground/AspireWithJavaScript/AspireJavaScript.React/package.json` | 3 | 1 |
| `playground/AspireWithJavaScript/AspireJavaScript.Vite/package-lock.json` | 252 | 262 |
| _... 他 85 件_ | | |

</details>

<details><summary>コミット (18 件)</summary>

- `b0b128c` Bump the npm_and_yarn group across 8 directories with 3 updates
- `de07dcd` fix: revert eslint v9→v10 major bump and fix npm registry URLs in CLI…
- `0c5b99f` fix: retain ESLint 9 across JS playgrounds and sync all lockfiles
- `f82ed87` fix(security): bump postcss to 8.5.20, hono to 4.12.31, add propagato…
- `e4291c0` fix: add overrides for @hono/node-server, webpack-dev-server, shell-q…
- `658bff1` fix: bump postcss 8.5.10→8.5.20 (GHSA-r28c-9q8g-f849) and tar 7.5.19→…
- `a2dbec1` Revert extension postcss bump to 8.5.10 (dnceng feed lacks 8.5.20)
- `b3ce406` Close brace-expansion / fast-uri coverage gaps across JS frontends an…
- _... 他 10 件_

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

テンプレートの package manifest・lockfile・ビルド設定の変更であり、Aspire の .NET ランタイム API は変更していません。ESLint 9 を維持する互換性調整も含まれます。

**既存利用者への影響**

テンプレート利用者は新しい manifest と lockfile で依存を再インストールしてください。既存のアプリコードに対する機械的な移行は不要です。

### [#19090](https://github.com/microsoft/aspire/pull/19090) — Mark ResourceUrlAnnotation.DisplayOrder as obsolete

- 作者: Copilot / 状態: MERGED
- ラベル: —
- 変更行数: +18 / -0
- マージ日時 (UTC): `2026-08-07 17:43:24`

**変更概要**

`ResourceUrlAnnotation.DisplayOrder` を obsolete として明示し、将来の表示順 API 整理に備えました。  
既存のリソース URL 表示処理と関連テストを更新しています。  
このプロパティを直接参照する Aspire 拡張・AppHost が影響範囲です。

<details><summary>変更ファイル (5 件)</summary>

| ファイル | +追加 | -削除 |
| -------- | ----- | ----- |
| `src/Aspire.Hosting/ApplicationModel/ResourceUrlAnnotation.cs` | 6 | 0 |
| `src/Aspire.Hosting/Dashboard/DashboardEventHandlers.cs` | 2 | 0 |
| `src/Aspire.Hosting/Dcp/ResourceSnapshotBuilder.cs` | 6 | 0 |
| `src/Aspire.Hosting/Orchestrator/ApplicationOrchestrator.cs` | 2 | 0 |
| `tests/Aspire.Hosting.Tests/WithUrlsTests.cs` | 2 | 0 |

</details>

<details><summary>コミット (5 件)</summary>

- `e6a1fd1` Mark DisplayOrder obsolete
- `5d6a1d2` Preserve obsolete DisplayOrder behavior
- `4c89dfa` Keep DisplayOrder compatibility test
- `639ce05` Finalize DisplayOrder obsoletion
- `9dfe719` Restore Go module requirements

</details>

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開プロパティを直ちに削除せず obsolete 属性を付ける段階的変更です。コンパイル時に非推奨警告が発生するため、利用箇所の移行準備が必要です。

**既存利用者への影響**

直ちに移行は不要ですが、警告を解消するため代替の表示順制御を確認し、将来の削除前に `DisplayOrder` 依存を除去してください。

## その他のマージ済み PR

| 番号 | タイトル | 作者 | リンク |
| ---- | -------- | ---- | ------ |
| #19220 | Don't select skipped Gateways and Ingresses for TLS work | mitchdenny | <https://github.com/microsoft/aspire/pull/19220> |
| #19236 | Fix PR docs recovery base handling | IEvangelist | <https://github.com/microsoft/aspire/pull/19236> |
| #19221 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19221> |
| #16275 | Fix duplicate default blob/queue/data lake service when custom-named parent is added | spboyer | <https://github.com/microsoft/aspire/pull/16275> |
| #19180 | Fix CreateFailingTestIssue failing on job logs that contain terminal escape sequences | adamint | <https://github.com/microsoft/aspire/pull/19180> |
| #19247 | Use official Aspire branding in dashboard | maddymontaquila | <https://github.com/microsoft/aspire/pull/19247> |
| #19182 | Make CheckCopilotCliAsync_UsesOverallGitHubTokenCandidateTimeout able to fail | adamint | <https://github.com/microsoft/aspire/pull/19182> |
| #19067 | Make C# Dev Kit Hot Reload discoverable while debugging | adamint | <https://github.com/microsoft/aspire/pull/19067> |
| #19162 | Warn when version update notification cannot be ignored | JamesNK | <https://github.com/microsoft/aspire/pull/19162> |
| #19176 | Fix VS Code extension self-signed certificate serial flake | adamint | <https://github.com/microsoft/aspire/pull/19176> |
| #19240 | [release/13.5] Improve handling of log deduplications | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19240> |
| #19218 | [release/13.5] Fix persistent resources using port 0 (auto-allocated) | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19218> |
| #17562 | Close guest process stdin to avoid TTY hang on macOS | spboyer | <https://github.com/microsoft/aspire/pull/17562> |
| #19225 | [release/13.5] Fix metric label selection behavior | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19225> |
| #19233 | [release/13.5] Gate polyglot integration filtering behind an off-by-default feature flag | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19233> |
| #19234 | [release/13.5] Separate regular arguments from launch tool ("entrypoint") arguments | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19234> |
| #19204 | Improve handling of log deduplications | karolz-ms | <https://github.com/microsoft/aspire/pull/19204> |
| #19071 | Normalize AppHost terminology in export attributes | IEvangelist | <https://github.com/microsoft/aspire/pull/19071> |
| #19073 | Add repository health to Aspire Team App canvas | IEvangelist | <https://github.com/microsoft/aspire/pull/19073> |
| #19155 | Fail docs checks without a conclusive outcome | IEvangelist | <https://github.com/microsoft/aspire/pull/19155> |
| #19118 | Make docs target checkout deterministic | IEvangelist | <https://github.com/microsoft/aspire/pull/19118> |
| #19200 | Respect project server ready action overrides | ellahathaway | <https://github.com/microsoft/aspire/pull/19200> |
| #18999 | Separate regular arguments from launch tool ("entrypoint") arguments | karolz-ms | <https://github.com/microsoft/aspire/pull/18999> |
| #19222 | Gate polyglot integration filtering behind an off-by-default feature flag | mitchdenny | <https://github.com/microsoft/aspire/pull/19222> |
| #19215 | Fix metric label selection behavior | JamesNK | <https://github.com/microsoft/aspire/pull/19215> |
| #19203 | Fix persistent resources using port 0 (auto-allocated) | karolz-ms | <https://github.com/microsoft/aspire/pull/19203> |
| #18834 | Add Radius recipe parameters and secret management | nellshamrell | <https://github.com/microsoft/aspire/pull/18834> |
| #19184 | [release/13.5] Stabilize Azure deployment test infrastructure | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19184> |
| #19186 | [release/13.5] Stabilize Azure Functions Core Tools install in CI | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19186> |
| #19198 | [release/13.5] Add third-party signing entries for Hex1b and QRCoder | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19198> |
| #19199 | [release/13.5] Improve handling of object change notifications during local run | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19199> |
| #19193 | Bump js-yaml from 4.3.0 to 4.3.1 in /playground/AspireWithJavaScript/AspireJavaScript.Angular in the npm_and_yarn group across 1 directory | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19193> |
| #19079 | Improve handling of object change notifications during local run | karolz-ms | <https://github.com/microsoft/aspire/pull/19079> |
| #19169 | Stabilizing packages ahead of 13.5 release | joperezr | <https://github.com/microsoft/aspire/pull/19169> |
| #19010 | Stabilize Azure deployment test infrastructure | mitchdenny | <https://github.com/microsoft/aspire/pull/19010> |
| #19175 | Stabilize Azure Functions Core Tools install in CI | adamint | <https://github.com/microsoft/aspire/pull/19175> |
| #19165 | Merge API compatibility fixes into release/13.5 | joperezr | <https://github.com/microsoft/aspire/pull/19165> |
| #19139 | Bump Aspire branding from 13.5 to 13.6 | Copilot | <https://github.com/microsoft/aspire/pull/19139> |
| #19148 | Fix build break in AzureBicepResourceScopeTests | adamint | <https://github.com/microsoft/aspire/pull/19148> |
| #18895 | Fix Azure SQL managed-identity provisioning script on az14.0 deployment image | mitchdenny | <https://github.com/microsoft/aspire/pull/18895> |
| #19084 | Preserve Azure Bicep scope API compatibility | sebastienros | <https://github.com/microsoft/aspire/pull/19084> |
| #18976 | Rename Azure scope factories | sebastienros | <https://github.com/microsoft/aspire/pull/18976> |
| #18979 | Fix Kubernetes persistent volume ATS export names | sebastienros | <https://github.com/microsoft/aspire/pull/18979> |
| #19081 | Fix Delve server API compatibility | sebastienros | <https://github.com/microsoft/aspire/pull/19081> |
| #19001 | Fix Azure Functions HTTPS launches in VS Code | ellahathaway | <https://github.com/microsoft/aspire/pull/19001> |
| #18949 | Enable running container tests on Podman-only machines | karolz-ms | <https://github.com/microsoft/aspire/pull/18949> |
| #19109 | Work around gh-aw cached Copilot path | IEvangelist | <https://github.com/microsoft/aspire/pull/19109> |
| #18912 | Handle ghost dev tunnel conflicts | krubenok | <https://github.com/microsoft/aspire/pull/18912> |
| #18600 | Fix progress command cancellation handling | adamint | <https://github.com/microsoft/aspire/pull/18600> |
| #19085 | Make hidden annotation exit codes read-only | sebastienros | <https://github.com/microsoft/aspire/pull/19085> |
| #19060 | Update DevTunnelOptions.cs | sebastienros | <https://github.com/microsoft/aspire/pull/19060> |
| #19078 | Improve Aspire Team App refresh and issue UX | DamianEdwards | <https://github.com/microsoft/aspire/pull/19078> |
| #19062 | Fix gh-aw docs PR push permissions | IEvangelist | <https://github.com/microsoft/aspire/pull/19062> |
| #18998 | Trim whitespace from token in SubmitAsync method | heintz06 | <https://github.com/microsoft/aspire/pull/18998> |
| #18952 | Properly process object update notifications from DCP | karolz-ms | <https://github.com/microsoft/aspire/pull/18952> |
| #18954 | Add resource icons to all hosting integration packages | afscrome | <https://github.com/microsoft/aspire/pull/18954> |
| #19051 | Update DevTunnelOptions.cs | kola-tm | <https://github.com/microsoft/aspire/pull/19051> |
| #19055 | Fix docs PR generation for release branches | IEvangelist | <https://github.com/microsoft/aspire/pull/19055> |
| #18989 | Lazily initialize dashboard menus | JamesNK | <https://github.com/microsoft/aspire/pull/18989> |
| #19043 | Fix metrics chart 24-hour time format | JamesNK | <https://github.com/microsoft/aspire/pull/19043> |
| #19042 | Improve AI agents dialog copy | JamesNK | <https://github.com/microsoft/aspire/pull/19042> |
| #19027 | Fix dashboard accessibility regressions | adamint | <https://github.com/microsoft/aspire/pull/19027> |
| #18728 | Add ergonomic Azure subnet service-delegation API | IEvangelist | <https://github.com/microsoft/aspire/pull/18728> |
| #18986 | Disable default timeout for HTTP commands | JamesNK | <https://github.com/microsoft/aspire/pull/18986> |
| #19012 | Cache VS Code and ChromeDriver downloads for extension E2E tests | adamint | <https://github.com/microsoft/aspire/pull/19012> |
| #18850 | Adjust required CLI behavior for C# AppHosts | DamianEdwards | <https://github.com/microsoft/aspire/pull/18850> |
| #18984 | Fix VS Code file AppHost build ownership | adamint | <https://github.com/microsoft/aspire/pull/18984> |
| #18918 | Decouple Aspire.Hosting.Dotnet from Aspire.Hosting internals | karolz-ms | <https://github.com/microsoft/aspire/pull/18918> |
| #18443 | Use incremental AppHost discovery in the extension | ellahathaway | <https://github.com/microsoft/aspire/pull/18443> |
| #18985 | Show status while preparing dashboard bundle | JamesNK | <https://github.com/microsoft/aspire/pull/18985> |
| #19007 | Graduate year-old experimental Aspire APIs | sebastienros | <https://github.com/microsoft/aspire/pull/19007> |
| #18968 | Make CLI package metadata prefetching opt-in | JamesNK | <https://github.com/microsoft/aspire/pull/18968> |
| #18987 | Use run wording for no-debug AppHost launches | vivekjm | <https://github.com/microsoft/aspire/pull/18987> |
| #18992 | Validate TerminalOptions columns and rows are positive | mitchdenny | <https://github.com/microsoft/aspire/pull/18992> |
| #18606 | Surface CLI release notes in npm package README | adamint | <https://github.com/microsoft/aspire/pull/18606> |
| #18973 | Show runtime unhealthy resources as warnings in VS Code | mturac | <https://github.com/microsoft/aspire/pull/18973> |
| #18943 | Dashboard: design-token system, typography refresh, UX polish & axe accessibility tests | IEvangelist | <https://github.com/microsoft/aspire/pull/18943> |
| #18621 | Copy AppHost path to clipboard when clicking the Path tree item (#18578) | adamint | <https://github.com/microsoft/aspire/pull/18621> |
| #18997 | Pin cacheable-request after npm supply-chain compromise | adamint | <https://github.com/microsoft/aspire/pull/18997> |
| #18980 | Restore hosted agent ATS compatibility | sebastienros | <https://github.com/microsoft/aspire/pull/18980> |
| #16555 | Add support for kubernetes projected volumes | ndhansen | <https://github.com/microsoft/aspire/pull/16555> |
| #18605 | Use secure publish for VS Code extension | adamint | <https://github.com/microsoft/aspire/pull/18605> |
| #18940 | Fix Windows global-tool Aspire CLI discovery | adamint | <https://github.com/microsoft/aspire/pull/18940> |
| #18977 | Seal CommandProgressOptions | sebastienros | <https://github.com/microsoft/aspire/pull/18977> |
| #18974 | Clarify interaction API documentation | sebastienros | <https://github.com/microsoft/aspire/pull/18974> |
| #18978 | Fix terminal API surface | sebastienros | <https://github.com/microsoft/aspire/pull/18978> |
| #18975 | Hide Orleans provider annotation | sebastienros | <https://github.com/microsoft/aspire/pull/18975> |
| #18597 | Fix guest AppHost unknown exit code message | adamint | <https://github.com/microsoft/aspire/pull/18597> |
| #18930 | Fix waiting for custom resources | karolz-ms | <https://github.com/microsoft/aspire/pull/18930> |
| #18562 | vscode telemetry: emit Aspire wire names without losing VS Code safeguards | adamint | <https://github.com/microsoft/aspire/pull/18562> |
| #18981 | Fix DotnetProjectResource API surface | sebastienros | <https://github.com/microsoft/aspire/pull/18981> |
| #18969 | Bound aspire doctor checks with timeouts | JamesNK | <https://github.com/microsoft/aspire/pull/18969> |
| #18555 | Recognize ancestor Directory.Build.* and <Import Sdk=...> in AppHost prefilter | adamint | <https://github.com/microsoft/aspire/pull/18555> |
| #18923 | Remove misplaced empty LogsCommand file | Copilot | <https://github.com/microsoft/aspire/pull/18923> |
| #18972 | Update Fluent UI to 4.14.4 | JamesNK | <https://github.com/microsoft/aspire/pull/18972> |
| #18870 | [Automated] Update Microsoft Foundry Models | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/18870> |

## その他の変更

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #19251 | Ensure Aspire CLI bundle resolution | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19251> |
| PR | #19243 | Fix Helm cleanup ordering for AKS destroy | open | sebastienros | <https://github.com/microsoft/aspire/pull/19243> |
| PR | #19253 | Project Radius backing resource connections from recipe outputs | open | nellshamrell | <https://github.com/microsoft/aspire/pull/19253> |
| PR | #19082 | Fix misleading AppHost build failure diagnostics | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19082> |
| PR | #19232 | Resolve dotnet paths in doctor checks | open | JamesNK | <https://github.com/microsoft/aspire/pull/19232> |
| PR | #19254 | [release/13.5] Don't select skipped Gateways and Ingresses for TLS work | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19254> |
| PR | #19219 | Pin AKS credential pipeline to the deployment subscription | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19219> |
| PR | #19125 | Emit DCP session termination when stopping resources | open | adamint | <https://github.com/microsoft/aspire/pull/19125> |
| PR | #19076 | Enable CLI bundle in C# AppHost templates | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/19076> |
| PR | #19086 | Update Project Resource v2 plan for file app builds | open | DamianEdwards | <https://github.com/microsoft/aspire/pull/19086> |
| PR | #19126 | Keep launch-configuration AppHost targets out of the workspace default | open | adamint | <https://github.com/microsoft/aspire/pull/19126> |
| PR | #19224 | Fix database resource peer resolution | open | JamesNK | <https://github.com/microsoft/aspire/pull/19224> |
| PR | #19157 | Recognize linked worktree .git files in QuarantineTools | open | adamint | <https://github.com/microsoft/aspire/pull/19157> |
| PR | #19244 | Honor ASPIRE_HOME for deployment state | open | sebastienros | <https://github.com/microsoft/aspire/pull/19244> |
| PR | #19069 | Cover single-file AppHost re-search fallback and make the no-AppHost error generic | open | adamint | <https://github.com/microsoft/aspire/pull/19069> |
| PR | #19248 | Redact owning resource's own secret env var in `describe` | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19248> |
| PR | #19127 | Run VS Code extension E2E tests on a current VS Code | open | adamint | <https://github.com/microsoft/aspire/pull/19127> |
| PR | #19146 | Assert every VS Code extension E2E spec has a CI matrix row | open | adamint | <https://github.com/microsoft/aspire/pull/19146> |
| PR | #19068 | Harden Aspire skills bundle loading, validation, and caching | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19068> |
| PR | #19077 | Expose resolved environment variables to debug launch producers | open | adamint | <https://github.com/microsoft/aspire/pull/19077> |
| PR | #19128 | Detect an outdated Aspire VS Code extension in aspire doctor | open | adamint | <https://github.com/microsoft/aspire/pull/19128> |
| PR | #19205 | Harden Azure Functions VS Code launch lifecycle | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19205> |
| PR | #19249 | Pin published Aspire Dashboard image to a reproducible tag | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19249> |
| PR | #19237 | Fix Azure Functions E2E polling after reload | open | ellahathaway | <https://github.com/microsoft/aspire/pull/19237> |
| PR | #19142 | Re-enable VS Code extension E2E tests in CI | open | adamint | <https://github.com/microsoft/aspire/pull/19142> |
| PR | #19246 | [release/13.5] Update dependencies from latest .NET Servicing and bump SDK to 10.0.400 | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/pull/19246> |
| PR | #19245 | Update dependencies from latest .NET Servicing and bump SDK to 10.0.400 | open | joperezr | <https://github.com/microsoft/aspire/pull/19245> |
| PR | #19238 | Improve process fallback failure diagnostics | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19238> |
| PR | #19147 | Keep the E2E state file bridge out of production extension builds | open | adamint | <https://github.com/microsoft/aspire/pull/19147> |
| PR | #19129 | Deduplicate and colorize AppHost logs in the VS Code debug console | open | adamint | <https://github.com/microsoft/aspire/pull/19129> |
| PR | #19124 | Make Aspire extension activity notifications dismissible | open | adamint | <https://github.com/microsoft/aspire/pull/19124> |
| PR | #19152 | Stop the Aspire CLI and own its RPC connections during extension deactivation | open | adamint | <https://github.com/microsoft/aspire/pull/19152> |
| PR | #19134 | Let agents start and stop AppHosts through VS Code | open | adamint | <https://github.com/microsoft/aspire/pull/19134> |
| PR | #19226 | Add AKS persistent volume support | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19226> |
| PR | #19230 | Fix DevTunnel health check for auto-selected regions | open | Vladipz | <https://github.com/microsoft/aspire/pull/19230> |
| PR | #19133 | Cover per-language debugger launch flows in extension E2E | open | adamint | <https://github.com/microsoft/aspire/pull/19133> |
| PR | #19072 | Use npm for npm CLI update checks | open | adamint | <https://github.com/microsoft/aspire/pull/19072> |
| PR | #19158 | Report an undetermined WSL version instead of asserting WSL2 | open | adamint | <https://github.com/microsoft/aspire/pull/19158> |
| PR | #19145 | Fix browser debug targets, empty webRoot, and resource stop ordering | open | adamint | <https://github.com/microsoft/aspire/pull/19145> |
| PR | #19132 | Version the AppHost build-ownership capability so no launch runs stale output | open | adamint | <https://github.com/microsoft/aspire/pull/19132> |
| PR | #19032 | Export canonical TypeScript API data from the CLI | open | adamint | <https://github.com/microsoft/aspire/pull/19032> |
| PR | #19130 | Complete the TypeScript 7 compatibility bridge | open | adamint | <https://github.com/microsoft/aspire/pull/19130> |
| PR | #19178 | Bound the NuGet package search timeout | open | adamint | <https://github.com/microsoft/aspire/pull/19178> |
| PR | #19177 | Make vacuous CI guards capable of failing | open | adamint | <https://github.com/microsoft/aspire/pull/19177> |
| PR | #19190 | Report actionable errors when DotnetProjectResource is published | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19190> |
| PR | #19131 | Show install hint when a language debug extension is missing | open | adamint | <https://github.com/microsoft/aspire/pull/19131> |
| PR | #19214 | Suppress CLI progress when console logging is enabled | open | JamesNK | <https://github.com/microsoft/aspire/pull/19214> |
| PR | #19202 | Update Aspire Team App ship milestone to 13.5 | open | joperezr | <https://github.com/microsoft/aspire/pull/19202> |
| PR | #19197 | Fix Foundry Local lifecycle and remote endpoints | open | sebastienros | <https://github.com/microsoft/aspire/pull/19197> |
| PR | #19195 | Add third-party signing entries for Hex1b and QRCoder | open | joperezr | <https://github.com/microsoft/aspire/pull/19195> |
| PR | #19135 | Support running the Aspire dashboard from tests | open | adamint | <https://github.com/microsoft/aspire/pull/19135> |
| PR | #19052 | [auto-sec] playground: cryptography 48.0.1 -> 50.0.0 (GHSA-g6cj-pr64-35w5) | open | IEvangelist | <https://github.com/microsoft/aspire/pull/19052> |
| PR | #19154 | Fix /quarantine-test and sibling test-management commands failing at Setup .NET | open | adamint | <https://github.com/microsoft/aspire/pull/19154> |
| PR | #19153 | Quarantine two flaky ProcessGuestLauncherTests | open | adamint | <https://github.com/microsoft/aspire/pull/19153> |
| PR | #19160 | Add Aspire-native Chaos integration design | open | brrusino | <https://github.com/microsoft/aspire/pull/19160> |
| PR | #19163 | Remove Publish-Build-Assets variable group from release/13.5 | open | missymessa | <https://github.com/microsoft/aspire/pull/19163> |
| PR | #19024 | Add Azure Connector Gateway integration | open | spboyer | <https://github.com/microsoft/aspire/pull/19024> |
| PR | #19097 | Remove Publish-Build-Assets variable group from release/13.4 | open | missymessa | <https://github.com/microsoft/aspire/pull/19097> |
| PR | #19008 | Add Azure Container Apps Sandboxes deployment target | open | spboyer | <https://github.com/microsoft/aspire/pull/19008> |
| PR | #19106 | Remove Publish-Build-Assets variable group from release/9.3 | open | missymessa | <https://github.com/microsoft/aspire/pull/19106> |
| PR | #19108 | Remove Publish-Build-Assets variable group from release/9.5 | open | missymessa | <https://github.com/microsoft/aspire/pull/19108> |
| PR | #19104 | Remove Publish-Build-Assets variable group from release/9.1 | open | missymessa | <https://github.com/microsoft/aspire/pull/19104> |
| PR | #19107 | Remove Publish-Build-Assets variable group from release/9.4 | open | missymessa | <https://github.com/microsoft/aspire/pull/19107> |
| PR | #19105 | Remove Publish-Build-Assets variable group from release/9.2 | open | missymessa | <https://github.com/microsoft/aspire/pull/19105> |
| PR | #19103 | Remove Publish-Build-Assets variable group from release/9.0-rc1 | open | missymessa | <https://github.com/microsoft/aspire/pull/19103> |
| PR | #19101 | Remove Publish-Build-Assets variable group from release/9.0 | open | missymessa | <https://github.com/microsoft/aspire/pull/19101> |
| PR | #19102 | Remove Publish-Build-Assets variable group from release/9.0-efnpgsql | open | missymessa | <https://github.com/microsoft/aspire/pull/19102> |
| PR | #19100 | Remove Publish-Build-Assets variable group from release/8.2 | open | missymessa | <https://github.com/microsoft/aspire/pull/19100> |
| PR | #19099 | Remove Publish-Build-Assets variable group from release/8.1 | open | missymessa | <https://github.com/microsoft/aspire/pull/19099> |
| PR | #19098 | Remove Publish-Build-Assets variable group from release/8.0 | open | missymessa | <https://github.com/microsoft/aspire/pull/19098> |
| PR | #19092 | Remove Publish-Build-Assets variable group from main | open | missymessa | <https://github.com/microsoft/aspire/pull/19092> |
| PR | #19096 | Remove Publish-Build-Assets variable group from release/13.3 | open | missymessa | <https://github.com/microsoft/aspire/pull/19096> |
| PR | #19093 | Remove Publish-Build-Assets variable group from release/13.0 | open | missymessa | <https://github.com/microsoft/aspire/pull/19093> |
| PR | #19094 | Remove Publish-Build-Assets variable group from release/13.1 | open | missymessa | <https://github.com/microsoft/aspire/pull/19094> |
| PR | #19095 | Remove Publish-Build-Assets variable group from release/13.2 | open | missymessa | <https://github.com/microsoft/aspire/pull/19095> |
| PR | #19117 | Add SASL/PLAIN password protection to the Kafka container | open | g7ed6e | <https://github.com/microsoft/aspire/pull/19117> |
| PR | #19044 | Disable autocomplete for dashboard filters | open | vivekjm | <https://github.com/microsoft/aspire/pull/19044> |
| PR | #19040 | Add experimental Azure VMSS compute environment | open | mitchdenny | <https://github.com/microsoft/aspire/pull/19040> |
| PR | #19026 | Export Dotnet Blazor gateway APIs to polyglot AppHosts | open | karolz-ms | <https://github.com/microsoft/aspire/pull/19026> |
| PR | #19075 | Bump org.postgresql:postgresql from 42.7.11 to 42.7.12 in /playground/PostgresEndToEnd/PostgresEndToEnd.JavaService in the maven group across 1 directory | open | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19075> |
| PR | #19029 | Move Capture paused warning to the start of the items footer | open | harshasiddartha | <https://github.com/microsoft/aspire/pull/19029> |
| PR | #19030 | Indent UTC timestamps option under Show timestamps in console logs menu | open | harshasiddartha | <https://github.com/microsoft/aspire/pull/19030> |
| PR | #19048 | Render aspire doctor output from issue template as code block by default | open | afscrome | <https://github.com/microsoft/aspire/pull/19048> |
| PR | #19041 | [Azure App Configuration] - Add health check endpoint for app config emulator | open | zhiyuanliang-ms | <https://github.com/microsoft/aspire/pull/19041> |
| PR | #18996 | Pin GitHub Actions to full-length commit SHAs | open | OssSecurityBot | <https://github.com/microsoft/aspire/pull/18996> |
| PR | #19031 | Project Radius backing resource connections from recipe outputs | closed | nellshamrell | <https://github.com/microsoft/aspire/pull/19031> |
| PR | #19183 | Fix flaky environment checker timeout test | closed | adamint | <https://github.com/microsoft/aspire/pull/19183> |
| PR | #18125 | Surface actionable diagnostic when TypeScript codegen generator is dropped by load failure | closed | sebastienros | <https://github.com/microsoft/aspire/pull/18125> |
| PR | #17325 | [do not review] Standardize dashboard filtering and sorting UX across telemetry views | closed | ellahathaway | <https://github.com/microsoft/aspire/pull/17325> |
| PR | #19111 | Bump the npm_and_yarn group across 9 directories with 1 update | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19111> |
| PR | #19185 | Pin Azure Functions Core Tools in test workflows | closed | mitchdenny | <https://github.com/microsoft/aspire/pull/19185> |
| PR | #19136 | Expose the evaluated project assembly name for debugger attach | closed | adamint | <https://github.com/microsoft/aspire/pull/19136> |
| PR | #19022 | Bump the npm_and_yarn group across 1 directory with 2 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19022> |
| PR | #19064 | [WIP] Fix code for WithDelveServer based on review comment | closed | Copilot | <https://github.com/microsoft/aspire/pull/19064> |
| PR | #19056 | Revert "Update DevTunnelOptions.cs (#19051)" | closed | sebastienros | <https://github.com/microsoft/aspire/pull/19056> |
| PR | #18925 | Add pinning to Dashboard run history | closed | JamesNK | <https://github.com/microsoft/aspire/pull/18925> |
| PR | #19006 | Bump the uv group across 2 directories with 1 update | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/19006> |
| PR | #18990 | Bump Next.js from 16.2.11 to 16.2.12 in the JS publish fixture | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18990> |
| PR | #18983 | Bump the npm_and_yarn group across 9 directories with 9 updates | closed | dependabot[bot] | <https://github.com/microsoft/aspire/pull/18983> |
| Issue | #19054 | PR Documentation Check fails to create docs PRs for release branches | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19054> |
| Issue | #19217 | TLS FQDN discovery waits 15 minutes for skipped route-less Gateway | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/19217> |
| Issue | #19066 | Tracking: open VS Code extension issues with no active PR | open | adamint | <https://github.com/microsoft/aspire/issues/19066> |
| Issue | #19252 | [CI Failure] GitHub artifact upload fails with ENOTFOUND DNS resolution error | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19252> |
| Issue | #19181 | [Failing test]: Aspire.Cli.Tests.Telemetry.InternalMicrosoftDetectorTests.CheckCopilotCliAsync\_UsesOverallGitHubTokenCandidateTimeout | closed | adamint | <https://github.com/microsoft/aspire/issues/19181> |
| Issue | #19250 | aspire stop leaves session-lifetime containers running | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19250> |
| Issue | #19179 | [Failing test]: Aspire.Cli.EndToEnd.Tests.TypeScriptSqlServerNativeAssetsBundleTests.StartAndWaitForTypeScriptSqlServerAppHostWithNativeAssets | closed | adamint | <https://github.com/microsoft/aspire/issues/19179> |
| Issue | #19151 | VS Code extension E2E azure-functions shard times out waiting for e2e-functions | open | adamint | <https://github.com/microsoft/aspire/issues/19151> |
| Issue | #19239 | publish: generated Compose/Kubernetes charts pin the Aspire Dashboard to mutable nightly ":latest" (not reproducible, not overridable via Helm values) | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19239> |
| Issue | #19227 | [AspireE2E] AppHost throws unhandled System.AggregateException when AspireUseCliBundle=true and CLI bundle dependencies are unavailable | open | maitan11 | <https://github.com/microsoft/aspire/issues/19227> |
| Issue | #19242 | Azure provisioning: generated "*-roles" (RBAC) modules emit a Bicep "no-unused-params" warning for the always-added location parameter | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19242> |
| Issue | #19241 | describe: "aspire describe --format json" leaks a generated secret in plaintext via the owning resource's own env var (gap in #18089; dependent-resource redaction works) | open | IEvangelist | <https://github.com/microsoft/aspire/issues/19241> |
| Issue | #19235 | [aw] Analyze CI Failure failed | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19235> |
| Issue | #19004 | Cache VS Code and ChromeDriver across extension E2E runs | closed | adamint | <https://github.com/microsoft/aspire/issues/19004> |
| Issue | #19189 | Allow the override of `serverReadyAction` for coreclr debugger in the aspire extension | closed | paule96 | <https://github.com/microsoft/aspire/issues/19189> |
| Issue | #19028 | Aspire Team App - Canvas improvement/Added visibility | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/19028> |
| Issue | #19035 | [main] VS Code (CLI?) incorrectly reports "The --apphost option specified a project that does not exist." if an apphost fails to build | open | afscrome | <https://github.com/microsoft/aspire/issues/19035> |
| Issue | #19036 | [main] Undismissable Extension Build notifications block copilot | open | afscrome | <https://github.com/microsoft/aspire/issues/19036> |
| Issue | #19080 | Launching aspire from different vscode launch configurations (using the extension) overrides the aspire.config.json file | open | manuelelucchi | <https://github.com/microsoft/aspire/issues/19080> |
| Issue | #19091 | WinUI3 (unpackaged) resource crashes with `0xC000027B` in `Microsoft.UI.Xaml.dll` when debugged concurrently with the AppHost via the VS Code Aspire extension | open | Arche-Based-tk | <https://github.com/microsoft/aspire/issues/19091> |
| Issue | #19138 | Harden Azure Functions VS Code launch lifecycle and E2E coverage | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19138> |
| Issue | #19140 | Debug console dedup only understands the default SimpleConsoleFormatter shape | open | adamint | <https://github.com/microsoft/aspire/issues/19140> |
| Issue | #19228 | VS Code emits DEP0169 warning when PR installer installs the extension | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19228> |
| Issue | #19229 | Provision-server-roles-sqlserver fails with MissingMethodException for MemoryCache..ctor | open | StiliyanIliev-Infonetica | <https://github.com/microsoft/aspire/issues/19229> |
| Issue | #19161 | aspire add / integration search over-filters in polyglot hosts: zero compatible integrations returned in a TypeScript AppHost | closed | joperezr | <https://github.com/microsoft/aspire/issues/19161> |
| Issue | #19150 | [CI Failure] Flaky: AppHostServerSessionTests.GetRpcClientAsync_WhenServerExitsBeforeSocketIsAvailable_FailsWithoutWaitingForConnectionTimeout takes longer than expected on Windows runner | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19150> |
| Issue | #19223 | Deployment/CLI E2E `PullRequest` install mode never puts the PR CLI on PATH (silent false passes) | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19223> |
| Issue | #19046 | [15.5] Filtering metrics by dimensions doesn't work as expected | closed | afscrome | <https://github.com/microsoft/aspire/issues/19046> |
| Issue | #19194 | [13.5] Regression - Persistent Resource no longer starts after upgrade | closed | afscrome | <https://github.com/microsoft/aspire/issues/19194> |
| Issue | #19210 | AddPersistentVolume cannot be used with AzureKubernetesEnvironmentResource | open | sebastienros | <https://github.com/microsoft/aspire/issues/19210> |
| Issue | #19216 | AKS credential pipeline uses ambient Azure CLI subscription | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19216> |
| Issue | #19016 | [main] `aspire doctor` taking 15 secs to run | open | afscrome | <https://github.com/microsoft/aspire/issues/19016> |
| Issue | #19213 | Foundry Local integration fails with current CLI and remote hosts | open | sebastienros | <https://github.com/microsoft/aspire/issues/19213> |
| Issue | #19212 | Revisit target framework defaults and selection in `aspire new` for .NET 11 | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19212> |
| Issue | #19050 | [AspireE2E] When only the 11.0 SDK is installed, the Aspire Starter app created using `aspire new` still target .NET 10 instead of .NET 11. | closed | EmilyFeng97 | <https://github.com/microsoft/aspire/issues/19050> |
| Issue | #19209 | Kubernetes publisher emits an HTTPS service reference for a port not exposed by the generated Service | open | sebastienros | <https://github.com/microsoft/aspire/issues/19209> |
| Issue | #19208 | Azure App Service publisher omits WithHttpHealthCheck path from generated site configuration | open | sebastienros | <https://github.com/microsoft/aspire/issues/19208> |
| Issue | #19207 | aspire add --source excludes configured NuGet sources needed by transitive dependencies | open | sebastienros | <https://github.com/microsoft/aspire/issues/19207> |
| Issue | #19206 | aspire destroy fails to uninstall Helm release for AKS deployments | open | sebastienros | <https://github.com/microsoft/aspire/issues/19206> |
| Issue | #19211 | Deployment state ignores ASPIRE_HOME and writes to the user profile | open | sebastienros | <https://github.com/microsoft/aspire/issues/19211> |
| Issue | #19159 | Playwright CLI provenance verification fails (`AttestationFetchFailed`) and blocks `aspire new` when `registry.npmjs.org` is unreachable | open | joperezr | <https://github.com/microsoft/aspire/issues/19159> |
| Issue | #19192 | `aspire update` shoudl never override existing wildcard package source mapping | open | afscrome | <https://github.com/microsoft/aspire/issues/19192> |
| Issue | #18970 | Move CLI installation discovery out of `aspire doctor` | open | JamesNK | <https://github.com/microsoft/aspire/issues/18970> |
| Issue | #19003 | Use resolved `dotnet` paths in `aspire doctor` | open | joperezr | <https://github.com/microsoft/aspire/issues/19003> |
| Issue | #19017 | [13.5] Trace logging on `aspire doctor` causes weird indentation | open | afscrome | <https://github.com/microsoft/aspire/issues/19017> |
| Issue | #19171 | CI failing on `release/13.5` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19171> |
| Issue | #19201 | [CI Failure] Flaky: InternalMicrosoftDetectorTests.CheckCopilotCliAsync_UsesOverallGitHubTokenCandidateTimeout fails intermittently on Windows runner | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19201> |
| Issue | #19173 | [Failing test]: Aspire.Deployment.EndToEnd.Tests.AzureResourceScopeDeploymentTests.DeployExistingServiceBusWithResourceGroupAndSubscriptionScope | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19173> |
| Issue | #19172 | [Failing test]: Aspire.Deployment.EndToEnd.Tests.RadiusStarterDeploymentTests.DeployStarterTemplateToRadiusOnAks | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19172> |
| Issue | #19074 | Update C# templates to opt-in to using the CLI bundle by default | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19074> |
| Issue | #19120 | Dashboard search inputs drop and reorder characters while typing | open | ma225tq | <https://github.com/microsoft/aspire/issues/19120> |
| Issue | #19196 | Add first-class preflight validation to publish and deploy pipelines | open | karolz-ms | <https://github.com/microsoft/aspire/issues/19196> |
| Issue | #19191 | Nit: misleading phrasing when updating packages | open | afscrome | <https://github.com/microsoft/aspire/issues/19191> |
| Issue | #19037 | Coordinate Project Resource v2 builds for file-based apps with shared project references | open | DamianEdwards | <https://github.com/microsoft/aspire/issues/19037> |
| Issue | #19188 | AzureSQL fails to deploy | closed | Sensing-Control-DevTeam | <https://github.com/microsoft/aspire/issues/19188> |
| Issue | #19187 | HTTPS endpoint + certificate configuration issues with Azure Function | open | pellea | <https://github.com/microsoft/aspire/issues/19187> |
| Issue | #19166 | [CI Failure] Azure Functions Core Tools install fails with HTTP 404 from cdn.functions.azure.com | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19166> |
| Issue | #19174 | [Failing test]: Aspire.Deployment.EndToEnd.Tests.AcaManagedRedisDeploymentTests.DeployStarterWithManagedRedisToAzureContainerApps | open | mitchdenny | <https://github.com/microsoft/aspire/issues/19174> |
| Issue | #19170 | [aw] PR Documentation Check hit engine rate limit (HTTP 429) | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19170> |
| Issue | #19168 | [CI Failure] dotnet tool restore fails with 'Connection reset by peer' during arcade tool restore | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19168> |
| Issue | #19167 | [CI Failure] dnceng NuGet flat2 package downloads time out (no data received for 60000ms) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19167> |
| Issue | #19164 | Bugware.lookbooks | open | chaiphet6669-afk | <https://github.com/microsoft/aspire/issues/19164> |
| Issue | #19137 | [bug] aspire run crashes with 'Null character in path' when aspire.config.json records an invalid appHost.path (#17624 missed CreateSettingsFileAsync) | open | adamint | <https://github.com/microsoft/aspire/issues/19137> |
| Issue | #19149 | [CI Failure] AzureBicepResourceScopeTests.cs fails to compile against main (stale PR branch, unrelated to PR changes) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19149> |
| Issue | #19083 | Scheduled workflow failing: Update Aspire Skills Bundle | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19083> |
| Issue | #19144 | [CI Failure] Windows test host process crashes with exit code 0xC0000142 after tests complete | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19144> |
| Issue | #19143 | [CI Failure] Flaky: JsonRpcAuthenticationTests.FailedAuthentication_ClosesConnection_AndPreventsFurtherCalls times out connecting to test RPC server on Windows | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19143> |
| Issue | #19141 | Options interface names depend on what else is loaded, so they aren't a stable part of a package's API | open | adamint | <https://github.com/microsoft/aspire/issues/19141> |
| Issue | #19119 | UnsafeAccessor for s_maximumTimeout will be broken in .NET 11 RC1 | open | Youssef1313 | <https://github.com/microsoft/aspire/issues/19119> |
| Issue | #18982 | Resources context menu adds invalid aria-expanded to layout container | open | JamesNK | <https://github.com/microsoft/aspire/issues/18982> |
| Issue | #19121 | `addAzureAppServiceEnvironment` always produces ACR | open | sveinung-t | <https://github.com/microsoft/aspire/issues/19121> |
| Issue | #19116 | [AspireE2E] Debugging Aspire AppHost fails with "The JSON-RPC connection with the remote party was lost before the request could complete" | closed | joniel-bolocon | <https://github.com/microsoft/aspire/issues/19116> |
| Issue | #18971 | Aspire do support for run mode related artifacts | open | tjwald | <https://github.com/microsoft/aspire/issues/18971> |
| Issue | #19047 | [AspireE2E] Deploying the 11.0 Preview 7 Aspire Starter app failed with error "Unable to access the repository 'dotnet/aspnet' at tag '11.0.0-preview.7' in the registry" | open | EmilyFeng97 | <https://github.com/microsoft/aspire/issues/19047> |
| Issue | #19115 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19115> |
| Issue | #19113 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19113> |
| Issue | #19112 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19112> |
| Issue | #19110 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19110> |
| Issue | #19087 | [aw] PR Documentation Check failed | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19087> |
| Issue | #19045 | [AspireE2E] The webfrontend project fails to start in .net11.0 Aspire Starter App with Redis project | open | EmilyFeng97 | <https://github.com/microsoft/aspire/issues/19045> |
| Issue | #19089 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19089> |
| Issue | #19088 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19088> |
| Issue | #19013 | Support installing multiple agent asset types with `aspire agent init` | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19013> |
| Issue | #19021 | Blazor WASM Hosting Not Loading Web Assets | open | isaacrlevin | <https://github.com/microsoft/aspire/issues/19021> |
| Issue | #19025 | Invalidate cached Aspire skills bundles when archive content changes | open | ellahathaway | <https://github.com/microsoft/aspire/issues/19025> |
| Issue | #19038 | Add outerloop E2E tests that actually build and run PublishAsDockerFile output | open | afscrome | <https://github.com/microsoft/aspire/issues/19038> |
| Issue | #19061 | Improve dashboard dark theme accent color | open | JamesNK | <https://github.com/microsoft/aspire/issues/19061> |
| Issue | #19020 | [13.5] Pause UI inconsistency | open | afscrome | <https://github.com/microsoft/aspire/issues/19020> |
| Issue | #19070 | Publishing a Go/Python app with a user-supplied Dockerfile silently drops the tool-invocation prefix | open | karolz-ms | <https://github.com/microsoft/aspire/issues/19070> |
| Issue | #19059 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19059> |
| Issue | #19058 | [aw] Failed jobs: PR Documentation Check | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19058> |
| Issue | #19015 | [main] Auto Completion on Structured Logs filter | open | afscrome | <https://github.com/microsoft/aspire/issues/19015> |
| Issue | #19018 | [13.5] Capture Paused alignment | open | afscrome | <https://github.com/microsoft/aspire/issues/19018> |
| Issue | #19019 | [13.5] Logs filter should hide `UTC timestamps` option when `Show timestamps` is disabled | open | afscrome | <https://github.com/microsoft/aspire/issues/19019> |
| Issue | #19039 | [CI Failure] Flaky: EnvironmentCheckerTests.CheckAllAsync_TimedOutCheckReportsWarningAndContinues - check completes too slowly under CI load | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19039> |
| Issue | #19014 | [CI Failure] Flaky: AzureSqlPrincipalReconciliationTests fail because SqlServerContainerFixture cannot bind port 1433 (address already in use) | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19014> |
| Issue | #19023 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/19023> |
| Issue | #19011 | [CI Failure] Flaky: WithDockerfileTests.AddDockerfileLaunchesContainerSuccessfully times out in DcpResourceWatcher | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19011> |
| Issue | #19005 | [CI Failure] GitHub artifact upload fails with ECONNRESET network error | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19005> |
| Issue | #18993 | [aw] PR Documentation Check reported incomplete result | open | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18993> |
| Issue | #19000 | [Aspire.Hosting.Docker] UpdateConfig.MaxFailureRatio serializes as a quoted string and produces invalid Compose YAML | open | SheepReaper | <https://github.com/microsoft/aspire/issues/19000> |
| Issue | #19002 | [CI Failure] Windows runner temp file command path inaccessible: 'A device which does not exist was specified' | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/19002> |
| Issue | #18994 | [CI Failure] dnceng NuGet feed returns HTTP 503 Service Unavailable during package restore | open | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18994> |
| Issue | #18988 | Add support for Azure Container App Environment with other logging destinations | open | christiannagel | <https://github.com/microsoft/aspire/issues/18988> |
| Issue | #18608 | CI failing on `main` | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18608> |
| Issue | #16791 | aspire init/add/restore can hang silently when stdin is a TTY (macOS) | closed | davidfowl | <https://github.com/microsoft/aspire/issues/16791> |
| Issue | #12493 | AddBlobContainer creates a default blob service | closed | fabiano | <https://github.com/microsoft/aspire/issues/12493> |
| Issue | #17910 | aspire restore crashes with raw stack trace when CLI is older than project's configured SDK (TypeScript apphost) | closed | radical | <https://github.com/microsoft/aspire/issues/17910> |
| Issue | #18929 | WithDebugSupport argument rewriting is order-sensitive and mutates the app model | closed | afscrome | <https://github.com/microsoft/aspire/issues/18929> |
| Issue | #14046 | [Aspire] Success notification shown in Aspire 13.2 when canceling or submitting empty value in Set Parameter dialog | closed | joniel-bolocon | <https://github.com/microsoft/aspire/issues/14046> |
| Issue | #13433 | `aspire new` fails with exception on Linux when nuget feed authentication fails | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/13433> |
| Issue | #9999 | Aspire AppHost/dashboard defaults no longer seem to apply | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/9999> |
| Issue | #19033 | All containers stuck in unhealthy state with Podman 6 | closed | HgIain | <https://github.com/microsoft/aspire/issues/19033> |
| Issue | #16604 | Aspire start not stopping existing apphost.py instances | closed | tjwald | <https://github.com/microsoft/aspire/issues/16604> |
| Issue | #18944 | WithBindMount fails on Docker Desktop for Linux — incorrect /host_mnt/ path prefix | closed | mahdiyar021 | <https://github.com/microsoft/aspire/issues/18944> |
| Issue | #18892 | Azure SQL managed-identity provisioning script fails with MissingMethodException (MemoryCache) on az14.0 deployment-script image | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/18892> |
| Issue | #8032 | [WebToolsE2E] Using VS Code C# Dev Kit, there is no IntelliSense for JSON editing when configuring Aspire integrations | closed | v-yuannie | <https://github.com/microsoft/aspire/issues/8032> |
| Issue | #18872 | VS Code does not start Azure Functions with HTTPS | closed | Bru456 | <https://github.com/microsoft/aspire/issues/18872> |
| Issue | #17469 | [waiting for fluentui-blazor release] Pressing Tab key collapses “View option” popup and causes unexpected focus reset:A11y_Aspire Dashboard_Resources_Keyboard | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17469> |
| Issue | #17466 | [waiting for fluentui-blazor release] Screen reader does not announce expanded/collapsed state for “View options” button:A11y_Aspire Dashboard_Resources | closed | kapilvaishna | <https://github.com/microsoft/aspire/issues/17466> |
| Issue | #18777 | Scheduled workflow failing: Deployment Cleanup | closed | github-actions[bot] | <https://github.com/microsoft/aspire/issues/18777> |
| Issue | #16045 | VS Code: Code Lens shows up in weird places Take 2 | closed | afscrome | <https://github.com/microsoft/aspire/issues/16045> |
| Issue | #17794 | Aspire Dashboard token authentication fails when the dashboard is served over HTTP | closed | KSemenenko | <https://github.com/microsoft/aspire/issues/17794> |
| Issue | #18913 | DevTunnels cannot recover from ghost tunnel records | closed | krubenok | <https://github.com/microsoft/aspire/issues/18913> |
| Issue | #18869 | DCP continuously emits modified notifications for containers that aren't running | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18869> |
| Issue | #18615 | Agentic Maintenance (microsoft/aspire.dev) workflow fails on every scheduled run — `GH_AW_GITHUB_TOKEN` secret is not configured | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/18615> |
| Issue | #18494 | [AspireE2E]It always shows "Scanning app code in current directory" when "azd init" a aspire project | closed | Susie-1989 | <https://github.com/microsoft/aspire/issues/18494> |
| Issue | #18931 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18931> |
| Issue | #18911 | VS Code Extension fails to start File Based app host, when `aspire run` works | closed | afscrome | <https://github.com/microsoft/aspire/issues/18911> |
| Issue | #18447 | Adjust require CLI for C# AppHosts in 13.5 | closed | DamianEdwards | <https://github.com/microsoft/aspire/issues/18447> |
| Issue | #18826 | aspire deploy failed | closed | kong-cong | <https://github.com/microsoft/aspire/issues/18826> |
| Issue | #17485 | Flaky: ResourceCommand_FailsWhenInteractionServiceIsRequired times out on aspire stop with DCP container still running | closed | mitchdenny | <https://github.com/microsoft/aspire/issues/17485> |
| Issue | #18054 | Aspire panel refresh briefly transitions running workspace AppHost into incorrect grouped/idle tree state | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/18054> |
| Issue | #17976 | When clicking refresh in aspire panel, you see "no apphosts in workspaces" until loading has completed | closed | adamint | <https://github.com/microsoft/aspire/issues/17976> |
| Issue | #17941 | Use `aspire ls --format --stream` for AppHost discovery in the extension | closed | davidfowl | <https://github.com/microsoft/aspire/issues/17941> |
| Issue | #18965 | Make CLI NuGet metadata prefetching opt-in per command | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18965> |
| Issue | #18017 | aspire deploy/publish fail in Aspire terminal | closed | adamint | <https://github.com/microsoft/aspire/issues/18017> |
| Issue | #18681 | DCP process-launch configuration does not propagate ASPNETCORE_URLS to forked child under composed-AppHost E2E lane — children silently exit before bind (0/4 binds within 30s) | closed | wangkanai | <https://github.com/microsoft/aspire/issues/18681> |
| Issue | #18910 | VS Code Extension: Why does running without a debugger say "Starting Debug Session" | closed | afscrome | <https://github.com/microsoft/aspire/issues/18910> |
| Issue | #17719 | Include changelog in CLI npm package | closed | adamint | <https://github.com/microsoft/aspire/issues/17719> |
| Issue | #18909 | VS Code Extension shows `Runtime Unhealthy` as error | closed | afscrome | <https://github.com/microsoft/aspire/issues/18909> |
| Issue | #18578 | Clicking the "Path" item in the AppHosts view should copy the path to the clipboard | closed | ellahathaway | <https://github.com/microsoft/aspire/issues/18578> |
| Issue | #18845 | `aspire deploy` Azure SQL role provisioning fails in Azure PowerShell 14 with MemoryCache MissingMethodException | closed | Juulsn | <https://github.com/microsoft/aspire/issues/18845> |
| Issue | #18018 | Update extension publishing to use secure publish as microsoft | closed | adamint | <https://github.com/microsoft/aspire/issues/18018> |
| Issue | #17306 | Aspire VS Code extension cannot launch CLI on Windows when Aspire is installed as a global .NET tool and resolves to aspire.cmd | closed | kbkjeldsen | <https://github.com/microsoft/aspire/issues/17306> |
| Issue | #18887 | [AspireE2E][Timestamp] Hour value in DateTime picker is shifted upward and overlaps with adjacent elements on Aspire dashboard | closed | jinzhao1127 | <https://github.com/microsoft/aspire/issues/18887> |
| Issue | #14076 | [AspireE2E] When I clicked install, the Aspire MCP server was not installed. | closed | v-reinawang | <https://github.com/microsoft/aspire/issues/14076> |
| Issue | #18650 | [AspireE2E] AppHost fails to resolve Aspire CLI bundle until Aspire CLI is initialized via 'aspire new' | closed | joniel-bolocon | <https://github.com/microsoft/aspire/issues/18650> |
| Issue | #17453 | [13.3] Waiting behaviour changed for custom resources | closed | afscrome | <https://github.com/microsoft/aspire/issues/17453> |
| Issue | #17844 | investigate how to remove the vs code extension id prefix from sent telemetry | closed | adamint | <https://github.com/microsoft/aspire/issues/17844> |
| Issue | #18899 | [aw] PR Documentation Check reported incomplete result | closed | aspire-repo-bot[bot] | <https://github.com/microsoft/aspire/issues/18899> |
| Issue | #18852 | Remove FluentMenu unregister workaround after upstream fix ships | closed | JamesNK | <https://github.com/microsoft/aspire/issues/18852> |
| Issue | #18961 | `aspire doctor` running for 30+ mins | closed | afscrome | <https://github.com/microsoft/aspire/issues/18961> |
| Issue | #18008 | Collect AI agent skill-usage telemetry for Aspire skills and MCP tools | closed | IEvangelist | <https://github.com/microsoft/aspire/issues/18008> |
