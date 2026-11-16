# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-11-05 00:03:42 〜 2026-11-12 00:51:15 (UTC)

対象期間内の GitHub Changelog 新着は **16 件** です。通常の RSS 先頭ページ10件に加え、[2ページ目](https://github.blog/changelog/feed/?paged=2)から期間内の6件を補完しました。Dependabot の停止条件、モデルのデータ保持条件、Actions ログ検査の有効化条件に注意してください。

## Issue types and fields are available for personal accounts

- 公開日 (UTC): `2026-11-11 17:16:46`
- リンク: <https://github.blog/changelog/2026-11-11-issue-types-and-fields-are-available-for-personal-accounts>

個人アカウント所有のリポジトリでも Issue types と Issue fields が **GA** になりました。
個人設定の Planning から、既定の Bug / Task / Feature を含むタイプと、Priority / Effort / Start date / Target date などのフィールドをそれぞれ最大25個まで管理できます。
フィールドはテキスト・数値・日付・単一選択・複数選択に対応し、タイプへの固定やタイプなし Issue での利用も可能です。
Issue 作成・閲覧画面と Projects で設定でき、REST / GraphQL API と webhook による自動化にも対応します。
Issue 画面からラベルとマイルストーンを直接作成する操作も追加され、個人開発や OSS の分類ルールを揃えやすくなります。

## GitHub App support for Enterprise Copilot seat management

- 公開日 (UTC): `2026-11-11 00:10:31`
- リンク: <https://github.blog/changelog/2026-11-10-github-app-support-for-enterprise-copilot-seat-management>

Enterprise GitHub Apps から、Enterprise レベルの Copilot シート管理 API を呼び出せるようになりました。
ユーザーおよび Enterprise チームへのシート割り当てを、App ベースの自動化で制御できます。
利用には、新しい Enterprise の細粒度 App 権限 `Enterprise Copilot license management` が必要です。
ライセンス配布を自動化する管理者は、既存 App の権限と認可範囲を確認してください。個人向け Copilot 契約の変更ではありません。

## Gemini 4 Carbon in GitHub Copilot

- 公開日 (UTC): `2026-11-10 19:26:51`
- リンク: <https://github.blog/changelog/2026-11-10-gemini-4-carbon-in-github-copilot>

Gemini 4 Carbon が GitHub Copilot で **GA** になり、複雑なコーディング・エージェント処理・推論向けのモデル選択肢に追加されました。
対象は Pro+ / Max / Business / Enterprise で、VS Code・Visual Studio・CLI・coding agent・Copilot app・Web・Mobile・各対応 IDE のモデル選択から利用できます。
段階的な展開のため、対象契約でも直ちに表示されるとは限りません。
利用量ベース課金ではプロバイダーの定価で請求されるため、採用前に Models and pricing を確認してください。
Business / Enterprise 管理者はモデルポリシーで制御できます。新モデルの既定有効化を無効にしていなければ、自動で有効になる設定にも注意が必要です。

## C++ language server now auto-configures MSBuild builds

- 公開日 (UTC): `2026-11-10 17:04:10`
- リンク: <https://github.blog/changelog/2026-11-10-c-language-server-now-auto-configures-msbuild-builds>

Copilot CLI 向け Microsoft C++ Language Server に、MSBuild 用のコンパイルコマンド抽出器が同梱されました。
プロジェクトを開いて言語サーバーを起動すると自動実行され、定義移動や参照検索に必要なコンパイルデータベースを生成します。
従来のように別の構成スキルを探索・実行する必要がなくなり、初期設定とそのためのトークン消費を減らせます。
利用にはプラグインのインストール、EULA の承諾、有効な Copilot 契約が必要です。
CMake では従来の生成スキルまたは自前の `compile_commands.json` を利用し、独自ビルドシステムでは専用の抽出スキルを用意します。自動化の対象を MSBuild 以外へ拡大した告知ではありません。

## Dependabot alerts will pause on inactive repositories

- 公開日 (UTC): `2026-11-10 14:20:05`
- リンク: <https://github.blog/changelog/2026-11-10-dependabot-alerts-will-pause-on-inactive-repositories>

**2026年12月8日から**、過去1年間に活動がない多くのリポジトリで Dependabot alerts が自動停止されます。
活動として数えるのはブランチ／タグへの push、リポジトリ作成、アラートの有効化で、既存アラートは削除ではなくアーカイブされます。
push または設定での再有効化によりアラートを復元でき、1年のカウントも再開します。
常時有効にしたい組織は、Dependabot alerts を有効にする強制セキュリティ構成、またはリポジトリ管理者による切り替えを許可しない Enterprise ポリシーを確認してください。これらの対象は自動停止から除外されます。
github.com の全プランとデータ所在地対応 Enterprise Cloud が対象で、Enterprise Server は対象外です。データ所在地環境ではアーカイブも同一リージョンに保存されます。

## A more informative GitHub dashboard

- 公開日 (UTC): `2026-11-10 10:34:35`
- リンク: <https://github.blog/changelog/2026-11-10-a-more-informative-github-dashboard>

GitHub ダッシュボードの表示密度が改善され、Feed または Home を既定タブとして固定できるようになりました。
PR・Issue・agent session の余白が縮小され、長いタイトルは1行表示となり、必要に応じて全文を確認できます。
PR と Issue の既定表示件数は3件から6件に増えますが、利用者の既存のカスタム選択は維持されます。
アカウントに agent session がない場合、そのセクションは非表示になります。
主に閲覧時の改善であり、リポジトリ設定や既存ワークフローの移行は不要です。

## Claude Fable 5.2 in GitHub Copilot

- 公開日 (UTC): `2026-11-09 16:46:43`
- リンク: <https://github.blog/changelog/2026-11-09-claude-fable-5-2-in-github-copilot>

Claude Fable 5.2 が **GA** になり、Pro+ / Max / Business / Enterprise の対応 IDE・CLI・Web・Mobile・coding agent・Copilot app へ段階的に展開されます。
利用量ベース課金ではプロバイダー定価で請求されます。大規模コードベースの多段階タスク向けですが、性能比較は告知内の初期評価です。
**既定ではプロンプトと出力を Anthropic が安全性分類のため保持**します。保持データはモデル学習には使用されないと説明されています。
Business / Enterprise のモデルポリシーは既定で無効で、有効化はデータ保持要件への了承を意味します。管理者は社内のデータ取扱規程との適合を先に確認してください。
適格な Enterprise 顧客には2026年末まで期限付きの ZDR 例外があり、その後の継続利用には Enterprise Frontier Safeguards が必要になる予定です。
適格性は GitHub アカウントチームへ確認し、承認後も管理者によるモデル有効化が必要です。GitHub Support は適格性の判断・アクセス有効化を行いません。

## Secret scanning detects secrets in GitHub Actions workflow logs

- 公開日 (UTC): `2026-11-09 09:01:37`
- リンク: <https://github.blog/changelog/2026-11-09-secret-scanning-detects-secrets-in-github-actions-workflow-logs>

Actions ワークフローログの secret scanning がパブリックプレビューになり、実行完了時にプロバイダーパターンを検査します。
検出はリポジトリの既存アラート一覧にログへのリンク付きで表示され、対応型では有効性を検査し、ログ削除後もアラートが残ります。
対象は Secret Protection または Advanced Security を持つ Enterprise Cloud（GHE.com を含む）で、secret scanning 有効リポジトリに限られます。
Enterprise owner が Settings → Policies → Advanced Security の `Secret scanning for Actions workflow logs` を有効化します。既定は無効です。
有効化後に完了した実行のみが対象で、過去ログの遡及検査はなく、汎用・カスタム・AI 検出パターンやマスク済みシークレットは検出しません。
**プレビュー中は通知が発生しない**ため、管理者はアラート一覧を直接確認する運用が必要です。

## Copilot code review: API management and review overview updates

- 公開日 (UTC): `2026-11-07 00:27:19`
- リンク: <https://github.blog/changelog/2026-11-06-copilot-code-review-api-management-and-review-overview-updates>

Copilot code review の有効化・review effort・runner などを REST / GraphQL API で管理できるようになりました。対象は Pro / Pro+ / Max / Business / Enterprise です。
Enterprise 設定は組織側で上書きできません。Enterprise / Organization 設定エンドポイントは GitHub Apps と fine-grained PAT に非対応ですが、Repository 設定は両者に対応し、読み書きにそれぞれ Administration: read / write が必要です。
レビューとコメントの明示的な帰属情報、利用した effort、報告された skills・MCP・custom instructions の情報も API で確認できます。
概要コメントは指摘を上部へ集約し、未レビューのファイルをまとめて表示します。自動レビューのリポジトリルールは bypass list に対応しました。
失敗・タイムアウト時は1回自動再試行し、対象モデルが使えない場合は別の適格モデルへ切り替えられます。Balanced は3つの reviewer モデルと統合モデルを使います。
オン／オフ時の課金・プレビュー設定保持や bot 起点レビューの不具合も修正されており、自動化側は権限と上位ポリシーを確認して導入してください。

## Copilot impact dashboard adds chat and VS Code agent usage

- 公開日 (UTC): `2026-11-06 22:17:28`
- リンク: <https://github.blog/changelog/2026-11-06-copilot-impact-dashboard-adds-chat-and-vs-code-agent-usage>

Copilot impact dashboard の Agent adoption に Chat と VS Code Agents window の利用が加わり、9種類の利用状況を確認できるようになりました。
Enterprise / Organization の28日レポートでも `copilot_feature_engagement.totals_by_feature` に `chat` / `vscode_agent` が追加されます。
各機能を期間内の2日以上使うと engagement に計上され、複数機能への重複計上があります。Chat には agent mode など usage metrics が捕捉する利用も含まれます。
「Passive users」は「Chat-first users」へ改称されますが、API 値は `No Cohort` のままで人数・adoption phase の判定は変わりません。追加した2機能も phase 判定には使われません。
変更前の期間は従来の7機能のみで、利用には usage metrics ポリシーの有効化と owner・billing manager・View Copilot Metrics を持つロール等の権限が必要です。

## GitHub Copilot weekly releases — November 2

- 公開日 (UTC): `2026-11-06 21:00:26`
- リンク: <https://github.blog/changelog/2026-11-06-github-copilot-weekly-releases-november-2>

Copilot の週次更新で、app・CLI・JetBrains・Xcode・VS Code の改善をまとめています。週次まとめには今回の対象期間より前に個別公開された機能も含まれます。
app は PR からの Agent Merge 設定、必要チェック待ちでの有効状態維持、context limit 到達時の compact 操作、ファイル drop による session 開始などを改善しました。
local session の assisted approval 向け個人 instructions は opt-in であり、未設定の利用者に自動で承認方針を適用するものではありません。CLI の `/settings` は plugin・MCP 等を統合した検索可能な画面になります。
JetBrains Air は既存 Copilot 契約で複数 session を扱え、Xcode の組み込み coding assistant 連携は Xcode 27.3 beta 以降の public preview です。
VS Code 1.145 は Agents window の remote preview / canvas、cron・custom agent 対応 local automation、外部ファイル添付を拡充。remote browser / canvas は設定の有効化が必要で、cloud session の添付は画像に限られます。

## @GitHub in Slack and Teams is generally available and more

- 公開日 (UTC): `2026-11-06 20:31:08`
- リンク: <https://github.blog/changelog/2026-11-06-github-copilot-in-slack-and-teams-is-generally-available>

Slack / Teams の `@GitHub` が **GA** になり、会話から不具合調査・Issue 作成・変更実装・PR 作成を開始できます。
Teams の Canvas では、会話の隣で実装計画・コード差分・preview を確認し、チームのフィードバックを実装へ反映できます。
メッセージから対象 repository を判定して session を開始する導線が改善され、サインイン前や既定 repository 未設定、対象切り替え、App access の案内も整理されました。
follow-up message への応答が止まる問題を修正し、作成 Issue / PR の説明には元の Slack / Teams 会話とユーザーの帰属が表示されます。
導入するチームはリンク先の onboarding と App access を確認してください。告知には新たな料金・全プランへの提供条件までは記載されていません。

## Usage metrics API adds code review details and addressed rate

- 公開日 (UTC): `2026-11-06 00:19:07`
- リンク: <https://github.blog/changelog/2026-11-05-usage-metrics-api-adds-code-review-details-and-addressed-rate>

Enterprise / Organization の repository 日次 usage report（`repos-1-day`）各行に `copilot_code_review` が追加されました。
`total_comments_addressed / total_comments_evaluated` で addressed rate を求められ、severity・review tier・comment type・customization 別にも内訳を確認できます。分母が0の日は率を算出しないでください。
addressed は提案の直接適用だけでなく手動修正や Copilot による修正、後続 PR で直すという返信も含み、コード修正済みの割合と同義ではありません。
評価は **PR のマージ日に計上**され、通常 bot 作成 PR のコメントは評価対象外です。一方、Copilot review 後に人間の change request なしでマージした件数には bot PR も含まれます。
利用には usage metrics policy と owner・billing manager・View Copilot Metrics 等の権限が必要です。既存の「適用した suggestion 数」とは定義・集計日が異なるため、同じ指標として比較しないでください。

## Usage metrics API flags telemetry and version gaps

- 公開日 (UTC): `2026-11-06 00:08:31`
- リンク: <https://github.blog/changelog/2026-11-05-usage-metrics-api-flags-telemetry-and-version-gaps>

Copilot usage metrics API に、client telemetry の欠落と IDE / extension の最低版未達を示す指標が追加されました。
ユーザー別1日／28日レポートに `client_telemetry_present` と `usage_metrics_requirements`（`met` / `unmet` / `unknown`）が入り、Enterprise / Organization の日次集計には欠落人数と最低版未達人数が出ます。
client event がないユーザーも active に数えられますが、コード行数・機能・モデル別の詳細が欠けます。古い client、telemetry 無効化、proxy / firewall などを切り分ける手掛かりになります。
2種類の人数は重複し得るので足し合わせず、日をまたいだ合算も unique user 数として扱わないでください。null / 省略はデータ不明であり、false / 0 ではありません。
変更前の日付には値がなく、最低版を満たしていても telemetry が届く保証はありません。利用には metrics policy の有効化と View Copilot Metrics 等の閲覧権限が必要です。

## Secret scanning upgrades detectors, adds SpaceX as partner

- 公開日 (UTC): `2026-11-05 15:48:50`
- リンク: <https://github.blog/changelog/2026-11-05-secret-scanning-upgrades-detectors-adds-spacex-as-partner>

SpaceX が secret scanning partner に加わり、`starlink_public_api_v2_secret` の自動検出が追加されました。
public repository で見つかった partner secret は発行元へ通知され、取り消しや rotation に利用されます。user secret の alert と partner 通知は区別してください。
Alibaba・AWS・Google は対になる secret が辞書フィルターで消えた場合の孤立マッチを抑え、OpenVSX は無関係な UUID の誤検出を減らします。
Pydantic Logfire は正式な token 長・文字集合を使い、placeholder や public browser token を除外。Tencent も prefix 後の英数字条件を強化しました。
検出範囲の追加と誤検出削減であり、今回の Actions workflow log preview を自動有効化する変更ではありません。検出後の有効な credential の失効・交換は通常どおり必要です。

## New pull request overview page in public preview

- 公開日 (UTC): `2026-11-05 08:00:00`
- リンク: <https://github.blog/changelog/2026-11-05-new-pull-request-overview-page-in-public-preview>

PR の新しい Overview が opt-in のパブリックプレビューになり、merge readiness と次の操作をページ上部へ集約します。
check・comment・approval の要約から未解決の阻害要因へ移動し、権限に応じて branch 更新・merge・draft 解除・close を実行できます。
会話は未解決分や自分のコメントで絞り込み、新しい順の並べ替えで追いかけられます。右上の activity summary から review request などへ移動できます。
利用はヘッダーの `Try the Overview page` から開始し、同じメニューで classic overview へ戻れます。公開時点は週末までの段階的 rollout です。
merge 条件や権限を緩和する機能ではなく、既存の状態を見つけやすくする初期 preview として評価してください。
