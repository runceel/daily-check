$scriptPath = Join-Path $PSScriptRoot '..\scripts\Invoke-DailyCheckReport.ps1'
. $scriptPath -InternalLoadFunctionsOnly

Describe 'daily report source of truth' {
    It 'derives all required files from RepoConfigs' {
        $headers = Get-UnitFileHeaders

        $headers.Count | Should Be 11
        foreach ($config in $script:RepoConfigs) {
            $headers.Contains($config.File) | Should Be $true
            $headers[$config.File] | Should Be ('# ' + $config.Owner + '/' + $config.Name)
        }
    }

    It 'generates an index row for every repository' {
        $rows = @(Get-IndexUnitRows)

        $rows.Count | Should Be (2 + $script:RepoConfigs.Count)
        foreach ($config in $script:RepoConfigs) {
            $expected = '| ' + $config.Owner + '/' + $config.Name + ' | [' + $config.File + '](./' + $config.File + ') |'
            ($rows -contains $expected) | Should Be $true
        }
    }

    It 'keeps skill documentation aligned with every output file' {
        $skillPath = Join-Path $PSScriptRoot '..\SKILL.md'
        $templatePath = Join-Path $PSScriptRoot '..\references\report-template.md'
        $skill = Get-Content -LiteralPath $skillPath -Raw
        $template = Get-Content -LiteralPath $templatePath -Raw

        $skill | Should Match '11 files'
        $template | Should Match '11 個'
        foreach ($config in $script:RepoConfigs) {
            $skill | Should Match ([regex]::Escape($config.File))
            $template | Should Match ([regex]::Escape($config.File))
        }
    }
}

Describe 'important change classification' {
    It 'detects removal of an implicit package reference as breaking' {
        Get-ChangeImportance -Title 'fix(sdk): remove implicit Worker package reference' -Labels @() |
            Should Be '⚠ 破壊的変更'
    }

    It 'detects sensitive log redaction as security' {
        Get-ChangeImportance -Title 'fix(sdk): redact sensitive info from ZipDeploy logs' -Labels @() |
            Should Be '⚠ セキュリティ'
    }

    It 'detects deniedPaths overlap hardening as security' {
        Get-ChangeImportance -Title '[WSLC] Reject nested deniedPaths overlaps in policy mapping' -Labels @() |
            Should Be '⚠ セキュリティ'
    }

    It 'uses the body when the title is neutral' {
        Get-ChangeImportance -Title 'Maintenance update' -Body 'Fixes a path traversal vulnerability.' -Labels @() |
            Should Be '⚠ セキュリティ'
    }

    It 'does not classify ordinary credential support as security' {
        $result = Get-ChangeImportance -Title 'Add credential provider support' -Labels @()
        $result | Should BeNullOrEmpty
    }

    It 'ignores unchecked importance words from a PR template body' {
        $body = "- [ ] Breaking change`n- [ ] Security fix"
        $result = Get-ChangeImportance -Title 'Refactor test helpers' -Body $body -Labels @()
        $result | Should BeNullOrEmpty
    }

    It 'ignores a body that explicitly says migration is not required' {
        $result = Get-ChangeImportance -Title 'Refactor serialization' -Body 'No migration is required.' -Labels @()
        $result | Should BeNullOrEmpty
    }

    It 'ignores a negated security statement in the body' {
        $result = Get-ChangeImportance -Title 'Update documentation' -Body 'This release does not fix a security vulnerability.' -Labels @()
        $result | Should BeNullOrEmpty
    }
}

Describe 'GitHub search windowing' {
    It 'splits a capped multi-day window and combines results' {
        Mock Invoke-GhSearchWindow {
            param($Kind, $Repo, $StartDate, $EndDate, $Limit)
            if ($StartDate -ne $EndDate) {
                return [PSCustomObject]@{
                    Items = @([PSCustomObject]@{ number = 1 }, [PSCustomObject]@{ number = 2 })
                    ReachedLimit = $true
                }
            }
            return [PSCustomObject]@{
                Items = @([PSCustomObject]@{ number = $StartDate.Day })
                ReachedLimit = $false
            }
        }

        $result = Get-GhSearchItems -Kind prs -Repo 'owner/repo' `
            -Since ([DateTime]'2026-07-20T00:00:00Z') `
            -Until ([DateTime]'2026-07-21T23:59:59Z') `
            -Limit 2

        $result.Truncated | Should Be $false
        @($result.Items).Count | Should Be 2
        Assert-MockCalled Invoke-GhSearchWindow -Times 3 -Exactly -Scope It
    }

    It 'reports truncation when a single day reaches the hard cap' {
        Mock Invoke-GhSearchWindow {
            return [PSCustomObject]@{
                Items = @([PSCustomObject]@{ number = 1 }, [PSCustomObject]@{ number = 2 })
                ReachedLimit = $true
            }
        }

        $result = Get-GhSearchItems -Kind issues -Repo 'owner/repo' `
            -Since ([DateTime]'2026-07-20T00:00:00Z') `
            -Until ([DateTime]'2026-07-20T23:59:59Z') `
            -Limit 2

        $result.Truncated | Should Be $true
        Assert-MockCalled Invoke-GhSearchWindow -Times 1 -Exactly -Scope It
    }
}

Describe 'finalization safety' {
    It 'does not commit or push by default' {
        $actions = Resolve-FinalizeGitActions $false $false $false $false
        $actions.Commit | Should Be $false
        $actions.Push | Should Be $false
    }

    It 'allows explicit commit and push' {
        $actions = Resolve-FinalizeGitActions $true $true $false $false
        $actions.Commit | Should Be $true
        $actions.Push | Should Be $true
    }

    It 'rejects push without commit' {
        $threw = $false
        try {
            Resolve-FinalizeGitActions $false $true $false $false | Out-Null
        } catch {
            $threw = $true
        }
        $threw | Should Be $true
    }
}
