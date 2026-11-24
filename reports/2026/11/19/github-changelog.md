# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-11-17 04:59:18 〜 2026-11-19 01:03:42 (UTC)

対象期間内の GitHub Changelog 新着は **19 件** です。既定RSSの10件に加え、2ページ目から期間内9件を補完し、3ページ目が対象期間より前であることを確認しました。RSSに含まれる記事本文に基づき、提供段階、利用条件、管理者が確認すべき設定を整理しています。

## Wait for pull request events with GitHub CLI

- 公開日 (UTC): `2026-11-19 00:00:13`
- リンク: <https://github.blog/changelog/2026-11-18-wait-for-pull-request-events-with-github-cli>

GitHub CLI **v2.105.0以降**で、PRの変更をポーリングせず待機する`gh event listen`が利用できます。
PRのURLと対象イベントを指定すると購読を作成してストリームを開き、イベントをJSON行として出力します。既定では最初のイベントで終了します。
`--count`、`--follow`、`--timeout`で待機方法、`--jq`・`--template`で出力を調整でき、レビュー提出、状態・head変更、競合、check suite完了などを待てます。
購読の直接管理には`gh event subscription create/list/view/delete`を使います。
コマンドもGitHub.comのEvent Streamsも**プレビュー**で、利用にはEvent Streamsの待機リスト登録とアクセス権が必要です。CLI更新だけで全員に有効になるわけではありません。

## Connect Supabase, Box, Calendly, and more to Copilot

- 公開日 (UTC): `2026-11-18 22:04:50`
- リンク: <https://github.blog/changelog/2026-11-18-connect-supabase-box-calendly-and-more-to-copilot>

GitHub検証済みMCPコネクターに、**Box、Buildkite、Calendly、ClickUp、Mixpanel、Supabase、Webflow、Wix**の8サービスが追加されました。
ビルド失敗の調査からコード修正へ進む、DBスキーマを確認してからマイグレーションを書くなど、外部サービスの情報を開発に結び付けられます。
接続はCopilot appのCustomize、CLIの`/mcp`のConnectorsタブ、VS CodeのAgents内Customizations、github.comのカスタマイズ画面から開始します。
全Copilotプラン向けの**パブリックプレビュー**です。Business/Enterpriseでは管理者がEditor preview featuresポリシーを有効にする必要があります。
MCP許可リストを個別指定している企業は新コネクターの追加が必要です。BoxのMCP許可など接続先側の管理設定も確認してください。

## Gemini 4 Neon in GitHub Copilot

- 公開日 (UTC): `2026-11-18 21:49:21`
- リンク: <https://github.blog/changelog/2026-11-18-gemini-4-neon-in-github-copilot>

Gemini 4 NeonがCopilotで**GA**になりました。エージェント型コーディング、複数段階のツール利用、知識作業向けのモデルです。
GoogleはGemini 4 Carbonに近い品質と低いタスク当たりトークンコストを説明していますが、これは提供元の評価であり、個別業務の結果を保証するものではありません。
対象は**Pro+、Max、Business、Enterprise**。各IDE、CLI、Copilot app、coding agent、Web、モバイルなどのモデル選択から利用し、段階的に展開されます。
従量課金でプロバイダーの定価に基づいて請求されるため、既存モデルから切り替える際は料金を確認してください。
Business/Enterprise管理者はモデルポリシーで制御できます。新モデルの既定有効化を無効にしていなければ自動有効になるため、許可方針を確認してください。

## Security risk assessments run automatically on GitHub Team

- 公開日 (UTC): `2026-11-18 16:54:26`
- リンク: <https://github.blog/changelog/2026-11-18-security-risk-assessments-run-automatically-on-github-team>

**GitHub Teamの組織でセキュリティリスク評価が自動実行**されるようになりました。
無料の評価を通じて、露出した資格情報とコードの脆弱性を把握し、組織の現在のリスクと対応優先度を確認できます。
結果の確認対象者は組織管理者とsecurity managerです。該当する担当者は検出結果を確認し、必要な修復を判断してください。
本告知は評価の自動実行に関するもので、検出した問題の自動修復や、すべての有料セキュリティ機能の無償化を意味するものではありません。

## Customize GitHub Copilot for your team

- 公開日 (UTC): `2026-11-18 16:00:13`
- リンク: <https://github.blog/changelog/2026-11-18-customize-github-copilot-for-your-team>

組織チームのCopilotカスタマイズが**GA**となり、承認済みAgent Pluginsをチームの既定として共有できます。対象は**Business/Enterprise**です。
チームmaintainerまたは組織ownerが、github.comのチーム画面のCustomize Copilotからプラグインやマーケットプレイスを追加します。
マーケットプレイスの追加だけではプラグインは有効にならず、個別に選択する必要があります。
選択済みプラグインはVS Code、Copilot app、CLIで**直接所属するメンバー**に既定有効となり、子チームには継承されません。
既定は任意で、ポリシーが許せばメンバー側で無効化できます。企業・組織の許可・必須・ブロック設定が優先されるため、チーム設定で上書きはできません。

## OpenAI’s GPT-6.2 Astra and GPT-6.2 Sol now available

- 公開日 (UTC): `2026-11-17 20:20:29`
- リンク: <https://github.blog/changelog/2026-11-17-openais-gpt-6-2-astra-and-gpt-6-2-sol-now-available>

GPT-6.2 AstraとGPT-6.2 SolがCopilotで**GA**になりました。Astraはエージェント型コーディング・端末作業、Solは複雑な実装・深いコードレビューを想定しています。
記事では初期評価での実問題検出やトークン効率の改善を紹介しています。ベンチマーク上の改善を、利用環境での修正精度やコストの保証とは扱わないでください。
対象は**Pro+、Max、Business、Enterprise**で、IDE、CLI、coding agent、Copilot app、Web、モバイルなどへ段階的に展開されます。
料金は従量課金でプロバイダーの定価に基づきます。採用前に現行モデルとの差を確認してください。
Business/Enterpriseではモデルポリシーでアクセスを管理できます。新モデルの自動有効化を止めている環境は管理者側の設定確認が必要です。

## GitHub Copilot Fusion updates: more availability, benchmarks, and models

- 公開日 (UTC): `2026-11-17 18:04:48`
- リンク: <https://github.blog/changelog/2026-11-17-github-copilot-fusion-updates-more-availability-benchmarks-and-models>

Copilot Fusionの利用画面と構成モデルが拡大し、最新のgithub.com、Visual Studio、GitHub MobileのiOS/Androidベータ版でも選択できるようになりました。
モバイルの通常配信版対応は今後とされているため、ベータ版との提供差に注意してください。
モデル選択からFusionを選び、effortを設定すると、タスクに応じたモデル選択・協調をFusionが扱います。
Maxに**Claude Sonnet 5.5**、Highに**GPT-6.1 Terra**、Standardに**MAI-Code-2**が追加されました。
Terminal-Bench 4.1でのFusion Maxの解決率71.2%なども公表されています。比較は当該評価条件の結果であり、実タスクでの品質・費用は別途確認してください。

## GitHub Copilot app, Microsoft Ignite releases

- 公開日 (UTC): `2026-11-17 18:03:42`
- リンク: <https://github.blog/changelog/2026-11-17-github-copilot-app-microsoft-ignite-releases>

Copilot appに、**Azure DevOps連携・browser useのパブリックプレビュー**と、**GitHub Enterprise Server対応のGA**が追加されました。
Azure DevOpsはSettings > Experimentalで有効化し、AccountsからMicrosoftアカウントを追加します。ブランチ作成・修正・PR対応を扱いますが、クラウドセッションは使えません。
browser useはChrome/EdgeなどのChromiumブラウザーと拡張機能を使い、サインイン済みブラウザーの隔離タブグループで作業します。既定はオフで、Computer UseとBrowser Useの両方を有効にします。
権限レベルは拡張機能側で管理します。既存のログイン状態を使うため、アクセス先と実行権限を確認して導入してください。
GHESのGAには**app 1.2.0以降**が必要です。GitHub.comまたはGHE.comでサインイン後、AccountsからGHESを追加します。こちらもクラウドセッションは非対応です。

## Copilot code review: Adaptive effort, secret detection, and more

- 公開日 (UTC): `2026-11-17 18:02:05`
- リンク: <https://github.blog/changelog/2026-11-17-copilot-code-review-adaptive-effort-secret-detection-and-more>

Copilot code reviewに**Adaptive effort、公開リポジトリ間の文脈参照、secret detectionのパブリックプレビュー**が追加されました。対象はPro、Pro+、Max、Business、Enterpriseです。
AdaptiveはPRの複雑さ・リスクに応じてLite/Balanced/Maxを選びます。単一PRまたは各階層の設定で有効化でき、管理者の最大effortを超えません。既定は引き続きBalancedです。
リポジトリ横断の文脈参照は**公開リポジトリ向け**のプレビューで、依存コードやドキュメント・指示・スキルを参照します。非公開リポジトリ一般への対応とは区別してください。
secret detectionは既知形式の決定的検出とAI/ML検出を組み合わせ、PRコメントで露出を指摘します。組織またはリポジトリのCopilot > Code reviewから設定し、指摘後の削除・失効は別途対応します。
Repository insightsではレビュー結果の利用状況を確認できます。また、**Azure Repos向けcode reviewがGA**となりました。
Azure Reposでは管理者が組織・プロジェクト・リポジトリで有効化し、ブランチポリシーによる自動要求または手動要求が可能です。費用は連携AzureサブスクリプションへGitHub AI creditsとして請求され、Azure Cost Managementで確認します。

## MAI Code 2 and MAI Code 2 Flash in GitHub Copilot

- 公開日 (UTC): `2026-11-17 18:01:45`
- リンク: <https://github.blog/changelog/2026-11-17-mai-code-2-and-mai-code-2-flash-in-github-copilot>

MicrosoftのMAI Code 2とMAI Code 2 FlashがCopilotに追加されました。Code 2は深いデバッグや複数ファイル実装、Flashは説明・局所修正・反復向けの軽量モデルという位置付けです。
**Code 2はPro/Pro+/Max/Business/Enterprise、FlashはFree/Studentを含む各プラン**が対象で、対象となる年間契約利用者にも提供されます。
VS Code、Visual Studio、CLI、cloud agent、Copilot app、Web、モバイル、JetBrains、Xcode、Eclipseなどのモデル選択から利用できます。
従量課金のため、軽量という説明だけで無償とは判断せず、モデル料金とプランの利用条件を確認してください。
Business/Enterpriseはモデルポリシーで制御できます。新モデルの既定有効化を管理者が止めていなければ自動有効になるため、組織の利用方針を確認してください。

## Monitor GitHub Copilot activity through Microsoft Agent 365

- 公開日 (UTC): `2026-11-17 18:00:59`
- リンク: <https://github.blog/changelog/2026-11-17-monitor-github-copilot-activity-through-microsoft-agent-365>

Copilotのagent activityをMicrosoft Agent 365へストリーミングし、他のAIワークロードと同じ制御面で監査できるようになりました。
cloud agent、CLI、VS Code、Visual Studio、JetBrains/Eclipseなど複数clientの活動を対象にします。
sessionのprompt、response、tool callと利用傾向を確認でき、Purview・Defenderの追加リスク情報を調査に利用できます。
対象は**Enterprise Managed Usersを使うGitHub Enterprise Cloud顧客**です。管理者はenterprise audit log streamingの手順と、会話データを扱う監査・保持方針を確認して設定してください。

## GitHub Copilot CLI adds Microsoft Entra sign-in as a preview

- 公開日 (UTC): `2026-11-17 18:00:35`
- リンク: <https://github.blog/changelog/2026-11-17-github-copilot-cli-adds-microsoft-entra-sign-in-as-a-preview>

Copilot CLI **1.0.113以降**でMicrosoft Entra認証が**パブリックプレビュー**になりました。現在はWindows/macOS対応で、Linuxは今後とされています。
OIDCによるEMU環境では、割り当て済みBusiness/EnterpriseライセンスとCLIポリシー有効化を条件に、別途GitHubログインせずSSOできます。この場合はGitHub inferenceとGitHub Copilot契約の管理下です。
別経路として、Frontier参加・従量課金付きMicrosoft 365 Copilotライセンスを持つ組織は、GitHubアカウントなしでMicrosoft 365 inferenceを使えます。
後者のモデル・利用制限はMicrosoft 365側で管理され、GitHub側とは異なります。Work IQ MCPで業務データを文脈として使う選択肢もあります。
EMU SSOは現時点でCLIとVS Codeに限定されるため、全clientへ同じ認証方式が展開されたとは扱わず、契約・認証経路を確認してください。

## Track Copilot code review outcomes in Repository insights

- 公開日 (UTC): `2026-11-17 18:00:35`
- リンク: <https://github.blog/changelog/2026-11-17-track-copilot-code-review-outcomes-in-repository-insights>

リポジトリのInsights先頭にRepository insightsが追加され、Copilotレビューの結果をまとめて確認できます。
対応されたコメント、高重大度コメントへの対応、後続の人間によるchange requestがなかったPR、CopilotレビューなしでマージされたPRが主な指標です。
対応率は分子・分母・評価不能除外・時系列なども確認でき、同じ指標をCopilot usage metrics APIの`repos-1-day`でも取得できます。
画面にはリポジトリread権限が必要で、APIはenterprise owner/billing manager、organization owner、またはView Copilot Metrics権限を持つroleが対象です。
**Copilot usage metricsポリシーの有効化が必要**です。対応率をそのまま欠陥検出率とみなさず、レビュー活用とカバレッジの改善指標として利用してください。

## GitHub Copilot Evals is now in public preview

- 公開日 (UTC): `2026-11-17 18:00:33`
- リンク: <https://github.blog/changelog/2026-11-17-github-copilot-evals-is-now-in-public-preview>

スキル・custom agent・MCP toolの振る舞いを繰り返し評価するCopilot Evalsが**パブリックプレビュー**になりました。
自然言語または`/eval`でタスクと良い結果の条件を定義し、実行経路・成功失敗・変更前後の結果を比較できます。
評価エンジンは拡張可能なローカルツールVallyで、**各実行は開始前に利用者が承認**します。一度の良い出力だけで品質を判断しないための仕組みです。
VS Codeは拡張機能、CLIはプラグイン、Copilot appはCustomizeで`github/evals` marketplaceを追加して導入します。
対象はIndividual、Business、Enterpriseです。prompt・モデル・スキル変更時に同じ評価を再実行し、回帰の有無を比較してください。

## Secret scanning on demand for developers and agents

- 公開日 (UTC): `2026-11-17 18:00:30`
- リンク: <https://github.blog/changelog/2026-11-17-secret-scanning-on-demand-for-developers-and-agents>

security-review specialistに、既存LLM検出と併用するGitHub secret scanningの**パブリックプレビュー**が追加されました。
500超の既知secret形式と、文脈から資格情報を探す専用モデルを使います。対象は変更コードで、**リポジトリ履歴の走査ではありません**。
既定はオフです。CLIは`/settings aiSecretDetection on`、appはExperimentalのAI secret detection、SDKはsession作成時の`SECURITY_REVIEW_FINE_TUNED_MODEL=true`で有効化します。
有効化後にsecurity-reviewへ委譲または`/security-review`で実行します。code reviewではSettings > Copilot > Code reviewのSecurity配下Secret scanningを有効化します。
既に該当レビューを使える利用者に追加プランは不要ですが、**Secret Protection AI Credit SKUとしてAI creditsを消費**します。無料・履歴全体保護・secret自動失効とは区別してください。

## GitHub Copilot benchmarks site adds harness comparisons

- 公開日 (UTC): `2026-11-17 18:00:22`
- リンク: <https://github.blog/changelog/2026-11-17-github-copilot-benchmarks-site-adds-harness-comparisons>

Copilot benchmarksにTerminal-Bench-Science 0.1とHarnesses比較画面が**パブリックプレビュー**で追加されました。
科学研究タスクの評価に加え、同じモデル・同じreasoning effortでCopilot CLI、Claude Code、Codex CLIを比較できます。
散布図は解決率と平均タスク費用、楕円は公開run間の変動を表し、差分には概算95% bootstrap区間も表示されます。
対応する完全一致モデルのmedium effortだけが比較対象で、FusionなどCopilot専用構成や不一致結果は除外されます。
モデル差とharness差を混同せず、条件とばらつきを見て自分の業務での評価候補を選ぶために利用してください。

## GitHub Event Streams is now in preview

- 公開日 (UTC): `2026-11-17 18:00:18`
- リンク: <https://github.blog/changelog/2026-11-17-github-event-streams-is-now-in-preview>

PRのイベントを接続維持型ストリームで受信するEvent Streamsが**プレビュー**になりました。
レビュー提出、push、競合、マージ・クローズ、check suite変更を待機でき、更新がない間のポーリングを減らせます。
公開webhook受信エンドポイントが不要なため、ノートPC上のagentからも利用する構成を取れます。
全GitHubプランが対象ですが、**待機リストで承認された後**に利用可能となります。GitHub CLI対応も本レポート上部の告知と合わせて確認してください。

## Upcoming deprecation of MAI-Code-1.1-Flash in December

- 公開日 (UTC): `2026-11-17 18:00:06`
- リンク: <https://github.blog/changelog/2026-11-17-upcoming-deprecation-of-mai-code-1-1-flash-in-december>

**MAI-Code-1.1-Flashは2026年12月18日に全Copilot体験で廃止予定**です。
推奨移行先は最新のMAI Code Flashモデルです。旧モデルを固定指定するワークフロー・SDK統合は、期限前に更新してください。
Enterprise管理者はCopilotのモデルポリシーで代替モデルのアクセス許可が必要な場合があります。
対象モデルのポリシーと対応clientの選択画面を確認し、切り替え後の品質・費用を検証してください。廃止後に旧モデルを手動除去する作業は不要とされています。

## Let GitHub Copilot interact with your browser

- 公開日 (UTC): `2026-11-17 18:00:00`
- リンク: <https://github.blog/changelog/2026-11-17-let-github-copilot-interact-with-your-browser>

Chrome拡張を使うbrowser useが、CLI、Copilot app、VS Code、JetBrainsで**パブリックプレビュー**になりました。
ブラウザー操作、Webアプリのリアルタイム調査・テストなどを、computer useと組み合わせて行えます。
CLIは`/plugin`でbrowser useを有効化して新sessionを開始し、app・IDEはBrowser Use設定を有効化します。app全体の前提は上記Ignite告知も確認してください。
拡張機能がConnectedであることを確認し、権限レベル・実験機能を拡張側で管理します。ログイン済みサービスへの操作を伴うため、アクセス先と実行する操作の範囲を確認してください。
