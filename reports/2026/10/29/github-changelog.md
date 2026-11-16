# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-10-28 00:23:35 〜 2026-10-29 03:43:14 (UTC)

対象期間内の GitHub Changelog 新着は **10 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。

## Route and orchestrate models with GitHub Copilot Fusion

- 公開日 (UTC): `2026-10-28 16:00:00`
- リンク: <https://github.blog/changelog/2026-10-28-route-and-orchestrate-models-with-github-copilot-fusion>

GitHub Copilot Fusion が一般提供されました。モデルピッカーで Fusion と努力レベル（Standard / High / Max）を選ぶと、各プロンプトに適したモデルを自動選択し、必要に応じて単独実行・段階的な品質確認・別モデルによる批評と修正を組み合わせます。
VS Code、GitHub Copilot app、Copilot CLI、JetBrains IDE の全 Copilot プランで利用でき、クライアントを更新して選択します。Fusion は使用した各モデルの標準料金で課金され、有料プランには期間限定でモデル費用30%割引があります。
管理者は組織・Enterprise のモデルポリシーで Fusion が選べるモデルを制御でき、Enterprise managed settings では努力レベルも含めて既定モデルに設定できます。モデル選択を自動化したい利用者は、費用と利用可能モデルのポリシーを確認してください。

## GitHub Copilot app, Universe releases

- 公開日 (UTC): `2026-10-28 15:55:00`
- リンク: <https://github.blog/changelog/2026-10-28-github-copilot-app-universe-releases>

GitHub Copilot app の **Projects** がパブリックプレビューになり、複数リポジトリにまたがる作業や、仕様・デザイン・会議メモなどリポジトリ外の情報も含む仕事を一つの場所で管理できます。目標とコンテキストを与え、使うモデルやツールを選ぶと、必要な数のエージェントがバックグラウンドで作業し、PR などの結果をレビューに戻します。
Slack / Figma など接続済みツールの情報を使った調査・仕様作成のほか、繰り返し作業向けの Project automations も案内されています。単一リポジトリの集中した作業は、従来どおりそのリポジトリから session を開始できます。
同じ告知で Computer Use も macOS / Windows のパブリックプレビューとして紹介され、Copilot がデスクトップアプリを閲覧・操作します。利用者の承認が操作前に必要で、組織は managed settings で無効化でき、macOS では Accessibility と Screen Recording の権限付与が必要です。アプリ設定で明示的に有効化してから試してください。

## GitHub Enterprise now includes access to GitHub Copilot

- 公開日 (UTC): `2026-10-28 15:50:00`
- リンク: <https://github.blog/changelog/2026-10-28-github-enterprise-now-includes-access-to-github-copilot>

GitHub / Microsoft のアカウントチームと契約する Enterprise Cloud 顧客では、GitHub Enterprise のライセンスユーザー全員に Copilot を含めるモデルが利用可能になりました。従来の Copilot seat 数ではなく、Enterprise の AI 利用予算が主な管理対象になります。
AI 利用は最初のリクエストから予算に計上され、既存の policy・alert・attribution が適用されます。コード補完と next edit suggestions は予算がなくても動作しますが、Copilot Chat、code review、cloud agent には利用可能な予算が必要です。予算枯渇でも seat 自体は失われません。
このアクセスは Copilot Enterprise と同じ機能・モデルを含みますが、seat ごとの月次 AI credit は含みません。Enterprise ライセンスを持たない同一 Enterprise のユーザーは Copilot Standalone（月額 $10/ユーザー）で同等アクセスを得られます。
アカウントチーム経由の顧客は営業担当に新規設定または既存契約の切り替えを相談してください。セルフサービス契約への展開は段階的で、現在のセルフサービス契約は影響を受けず、Copilot Business / Enterprise の販売も継続します。

## Security extension for the GitHub Copilot app

- 公開日 (UTC): `2026-10-28 15:45:00`
- リンク: <https://github.blog/changelog/2026-10-28-security-extension-for-the-github-copilot-app>

GitHub Copilot app 向け Security extension がパブリックプレビューとなり、Code Scanning の既存アラートを severity 順に閲覧・検索・絞り込み、影響コードや関連 PR を確認できます。Copilot に説明や修正を依頼できますが、修正はローカル作業コピーにのみ適用され、自動 commit / push はされません。
既存変更に `/security-review` を実行して新たな findings を既存アラートと並べることもできます。レビュー後にコードが変更された場合は再レビューが必要です。Explain / Fix / review は選択モデルを使い AI credits を消費しますが、閲覧や dismissal 自体は消費しません。
`copilot plugin install github-security@awesome-copilot` または app の Customize から extension を導入できます。GitHub.com と data residency 対応 GitHub Enterprise Cloud が対象で、Enterprise Server は非対応です。Business / Enterprise では管理者による Copilot app policy の許可が必要です。
既存アラートの表示・修正には対象リポジトリで Code Scanning が有効で、利用者に閲覧権限が必要です。Private repository では GitHub Code Security が必要となるため、導入前にライセンス・権限・plugin policy を確認してください。

## GitHub intelligence puts your code, context, and history to work

- 公開日 (UTC): `2026-10-28 15:40:00`
- リンク: <https://github.blog/changelog/2026-10-28-github-intelligence-puts-your-code-context-and-history-to-work>

GitHub intelligence は、Memory（セッション間の知識保持）、Dreaming（コンテキストの継続更新）、Code Search（checkout 外のコード探索）を通じ、チームの規約や履歴をエージェント作業に活用する仕組みです。機能ごとに提供段階と設定が異なります。
Copilot Memory は有料プランで一般提供となり、個人の好みや repository の規約・テスト手順を複数の Copilot クライアント間で再利用できます。Copilot app / CLI / VS Code で確認・操作でき、個人設定から保存済みの記憶を閲覧・削除できます。
Dreaming はオプトインのパブリックプレビューです。過去の会話から個人・repository memory を更新し、繰り返し受け入れられた review feedback を code review guidance にできます。Skills や custom instructions への変更は PR として提案され、実行は AI credits を消費するため、個人設定と組織ポリシーの双方を確認してください。
Code Search は関連 repository のコード・設定・schema・文書を、正確な語句・symbol・正規表現・自然言語による意味検索で探し、`/research` などで横断調査に利用できます。検索対象のアクセス制御が適用されますが、対象範囲や有効化方法は各機能の設定・提供条件を確認してください。

## Build shared workflows for your team with Copilot Automations

- 公開日 (UTC): `2026-10-28 15:35:00`
- リンク: <https://github.blog/changelog/2026-10-28-build-shared-workflows-for-your-team-with-copilot-automations>

Copilot Automations の共有機能が順次ロールアウトされ、prompt・trigger・tool を組み合わせたクラウド実行の AI ワークフローをチームで共同作成・保守できます。例として、Issue 作成時の bug 再現、PR ready 時の screenshot 取得、監視アラート発生時の incident 調査が挙げられています。
個人向け automation と異なり、repository の read 権限があれば閲覧でき、write 権限があれば編集できます。AI credits は作成者ではなく repository 所有者に課金され、GitHub 上の操作は個人ではなく Copilot 名義で記録されます。作成者がチームを離れても repository に紐づいて存続し、変更履歴を確認できます。
組織所有 repository で実行するには、管理者が「Allow use of Copilot cloud agent billed to the organization」policy を有効にする必要があります。作成時に Type を Shared に指定し、作成後は種別を変更できません。
Copilot Pro / Pro+ / Max / Business / Enterprise に順次提供中です。利用可能になったら write 権限のある repository で作成できますが、課金先と実行主体をチームで合意してから共有化してください。

## GitHub Copilot in VS Code, Universe releases

- 公開日 (UTC): `2026-10-28 15:33:00`
- リンク: <https://github.blog/changelog/2026-10-28-github-copilot-in-vs-code-universe-releases>

VS Code の Copilot 更新では、クラウド・ローカル・リモートの agent 実行や、複数クライアント間で同じ session を継続する手段が拡張されました。cloud session は GitHub 側で実行され、VS Code、Copilot app、Mobile、github.com、CLI から再開できます。
Agent Host は VS Code window 単位から session を分離し、folder/window を閉じてもローカルで作業を継続します。Remote SSH / dev tunnels を使う場合は remote machine と Agent Host が稼働し続ける必要があります。GitHub Mobile から自分の PC 上の agent を操作するには、`code agent host --github-environment` を起動します。
新しい session では Microsoft Copilot SDK を基盤とする Copilot harness が既定となり、Customizations marketplace と connectors はプレビューです。Business / Enterprise では Editor preview features policy が必要な機能があります。Computer Use も実験機能で、アプリ操作前の承認と管理者 policy に従います。
モデル/harness の並列比較、Judge による推奨と Synthesize、プラグイン・marketplace の組織ポリシー、Slack / Notion / Microsoft Learn connector も紹介されています。機能ごとに preview と管理者制御の条件が異なるため、展開前に policy と実行環境を確認してください。

## Generate and edit images directly in Copilot

- 公開日 (UTC): `2026-10-28 15:30:55`
- リンク: <https://github.blog/changelog/2026-10-28-generate-and-edit-images-directly-in-copilot>

GitHub Copilot で自然言語から画像を生成・編集できるパブリックプレビューが始まりました。選択中の推論モデルが GPT Image 2.5 Flare ベースの専用生成ツールを呼び、結果をチャット内に表示して workspace に保存するため、別ツールへの切り替えや手動取り込みを減らせます。
VS Code、GitHub Copilot app、Copilot CLI のチャットで画像を説明して利用します。Copilot Pro / Pro+ / Business / Enterprise が対象で、画像 token に基づき chat model とは別に課金され、AI credits を消費します。
生成画像には「Made with AI」watermark を任意で付けられ、既定では無効です。組織・Enterprise 管理者は Copilot model policies で画像生成モデルを無効化できます。費用と組織ポリシーを確認してから利用してください。

## GitHub Copilot Fusion now supports selection of local models

- 公開日 (UTC): `2026-10-28 15:30:42`
- リンク: <https://github.blog/changelog/2026-10-28-github-copilot-fusion-now-supports-selection-of-local-models>

Copilot Fusion の実験プレビューで、対応するオンデバイスモデルとクラウドモデルを自動選択する local-model routing が Copilot CLI、Copilot app、VS Code で利用可能になりました。Windows の対応デバイスでは Windows ML provider 経由で MAI Code 1.1 Flash を管理ダウンロードでき、Standard effort でローカルとクラウドを自動選択します。
手動で設定する OpenAI-compatible local server も CLI では Windows / macOS / Linux で利用できます（MAI Code 1.1 Flash、Qwen3.8 Flash Next など）。Copilot app の自動ルーティングは現時点で管理された Windows ML model のみで、BYOK でモデルを登録しただけでは Fusion の候補になりません。VS Code は `chat.copilot.localModel.enabled`、CLI は experimental mode、app は provider と local auto routing の設定が必要です。
ローカル推論でもオフライン動作にはならず、Fusion のルーティング判断はクラウドで行われます。端末の計算資源が必要で、ローカルモデルの安全保護は Copilot 提供クラウドモデルと異なる場合があるため、機密性・安全性・性能の要件を評価してから opt-in してください。

## GitHub Agentic Workflows generally available

- 公開日 (UTC): `2026-10-28 15:30:15`
- リンク: <https://github.blog/changelog/2026-10-28-github-agentic-workflows-generally-available>

GitHub Agentic Workflows が GitHub.com 上で GitHub Free / Team / Enterprise 向けに一般提供されました。自然言語 Markdown で自動化を記述すると標準 GitHub Actions YAML に変換され、Issue triage、CI failure analysis、文書更新、テスト作成などを coding agent で実行します。GitHub Copilot CLI engine を既定利用する場合は Copilot ライセンスが必要です。
既存の runner groups と policy constraints を使い、GitHub content の integrity filter、既定 read-only 権限、sandboxed container と Agent Workflow Firewall、safe outputs 検証、適用前の threat detection を組み合わせた多層 safeguard が提供されます。
GA では self-hosted Actions Runner Controller / Docker-in-Docker、AI credit の範囲を含む `gh aw forecast`、workflow ごとの model/provider 選択、model routing、Cloud Hypervisor / NVX micro-VM による隔離強化などが加わりました。
CLI extension を導入し quickstart や既成 workflow から始められます。自動化が作成・適用する変更の権限、safe outputs、runner 隔離、AI credit を確認し、まず限定的な repository とタスクで検証してください。
