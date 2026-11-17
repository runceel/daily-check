# GitHub Changelog

取得元: <https://github.blog/changelog/feed/>

対象期間: 2026-11-16 05:01:57 〜 2026-11-17 04:59:18 (UTC)

対象期間内の GitHub Changelog 新着は **8 件** です。

## Dependabot alert dismissal requests now last one year

- 公開日 (UTC): `2026-11-17 00:09:27`
- リンク: <https://github.blog/changelog/2026-11-16-dependabot-alert-dismissal-requests-now-last-one-year>

Dependabot の委任されたアラート却下で、承認リクエストの有効期間が 1 週間から 1 年へ延長されました。
レビュー待ちの間に期限切れとなり、再申請が必要になるケースを減らす変更です。
github.com では利用可能で、GitHub Enterprise Server では 3.24 に含まれる予定です。
利用組織は承認待ちの運用を見直せますが、この告知に移行作業や追加の有効化手順はありません。

## GitHub Copilot weekly releases — November 9

- 公開日 (UTC): `2026-11-16 21:34:53`
- リンク: <https://github.blog/changelog/2026-11-16-github-copilot-weekly-releases-november-9>

Copilot アプリの GitHub Enterprise Server 対応が **GA** として紹介されています。GitHub.com または GHE.com アカウントが別途必要で、GHES のクラウドセッションは対象外です。
Claude Fable 5.2 と Gemini 4 Carbon は Pro+・Max・Business・Enterprise 向けです。Fable 5.2 は既定でデータ保持を必要とし、Business・Enterprise では管理者によるポリシー有効化も必要です。
アプリでは Project 自動化の分単位／cron 指定、モバイルへの QR コード引き継ぎ、会話内での MCP 再認証などが追加されています。
VS Code 1.146 では、モデル比較のエージェント操作、要対応セッションを優先する Inbox、Agents ウィンドウ内の拡張管理が実験段階、独立チャットウィンドウがプレビューです。
Local harness は 2027 年 2 月に削除予定のため、新機能の試用と併せて Copilot harness への互換性確認を進めてください。

## Budget limit increased to 40,000 budgets per account

- 公開日 (UTC): `2026-11-16 21:30:49`
- リンク: <https://github.blog/changelog/2026-11-16-budget-limit-increased-to-40000-budgets-per-account>

GitHub Enterprise Cloud のアカウント当たり予算作成上限が、10,000 件から 40,000 件に拡大されました。
個人ごとの予算や多数のコストセンター・Organization を管理する大規模企業が対象となる改善です。
github.com と GHE.com に自動適用されるため、管理者が設定を有効化する必要はありません。
予算を追加する際は既存の Budgets and alerts の仕組みを利用できます。予算額や課金単価の変更を告知するものではありません。

## GitHub Copilot models deprecated on November 16, 2026

- 公開日 (UTC): `2026-11-16 20:25:20`
- リンク: <https://github.blog/changelog/2026-11-16-github-copilot-models-deprecated-on-november-16-2026>

**非推奨化・移行対応**: 2026 年 11 月 16 日付で Claude Opus 4.8、Claude Opus 5、GPT-5.6 Terra が、Chat・インライン編集・ask／agent モード・補完など大半の Copilot 体験で非推奨となりました。
推奨移行先は Opus 4.8／5 が Claude Opus 5.5、GPT-5.6 Terra が GPT-6.1 Sol または GPT-6 Luna です。
例外として個人の年間契約では Opus 4.8 が引き続き利用可能です。Opus 5 は選択画面から削除されますが、既存の認可に基づく実行時拒否フォールバックには残ります。
Business・Enterprise では既定のモデル有効化がオンなら代替モデルも自動有効ですが、全体設定や個別ポリシーで無効化している場合は管理者の確認が必要です。
旧モデルを削除する操作は不要です。モデル名を固定したワークフローや連携を更新し、代替モデルのアクセス許可と動作を確認してください。

## Control where GitHub Copilot customizations come from

- 公開日 (UTC): `2026-11-16 19:48:33`
- リンク: <https://github.blog/changelog/2026-11-16-control-where-github-copilot-customizations-come-from>

企業管理設定 `strictPluginOnlyCustomization` により、ユーザー／プロジェクトに直接置かれたカスタマイズを制限し、プラグインまたは管理設定からの提供に限定できます。
対象は skills・custom agents・hooks・MCP servers・実行可能な Copilot extensions の 5 種で、一括またはカテゴリごとに指定します。ここでいう extensions は canvas provider などで、VS Code Marketplace 拡張ではありません。
この設定だけでは企業管理プラグイン限定にもマーケットプレース許可リストにもならないため、配布元を限定する場合は `strictKnownMarketplaces` と併用します。
GitHub Enterprise Cloud の企業管理者が、その企業または配下組織から Business／Enterprise ライセンスを付与されたメンバーに設定できます。
導入前に単独配置の MCP やスキルへの影響を確認し、承認済みプラグインへの移設と既存ポリシーの整合性を確認してください。

## VS Code retires the Local harness in February 2027

- 公開日 (UTC): `2026-11-16 19:22:56`
- リンク: <https://github.blog/changelog/2026-11-16-vs-code-retires-the-local-harness-in-february-2027>

**廃止予定**: VS Code 1.146 で Local harness が非推奨となり、2027 年 2 月に削除されます。移行先は 1.143 から新規セッションの既定となっている Microsoft Copilot harness です。
新規セッションの **Session Target** で **Copilot** を選び、期限までにカスタマイズの互換性を確認してください。切り替えても、すべてのカスタマイズが自動変換されるわけではありません。
Copilot harness でも端末上のエージェント実行は継続でき、選択自体でファイルがクラウドへ移動することはありません。既存プランを利用できますが、個別機能はプラン・設定・組織ポリシーに依存します。
管理者は一時例外 `vscode.temporaryDefaultToLocalHarness` と必須ワークフローを点検してください。この例外も同時削除され、設定を残しても旧 harness は維持できません。
ランタイム権限やサンドボックス制約は別途設定が必要で、harness の選択だけではサンドボックスは有効になりません。[移行ガイド](https://code.visualstudio.com/docs/agents/run/move-to-copilot) に沿った検証が必要です。

## Bulk start AI Scan for repositories

- 公開日 (UTC): `2026-11-16 15:50:22`
- リンク: <https://github.blog/changelog/2026-11-16-bulk-start-ai-scan-for-repositories>

AI Scan for repositories を、最大 20 リポジトリまでまとめて開始できるようになりました。一括開始は **パブリックプレビュー** です。
既定ブランチを調べ、CodeQL 非対応言語や CodeQL が扱う言語の追加問題を検出し、結果を既存の code scanning アラートと同じバックログへ表示します。
Organization 設定の有効化時、または組織の code scanning アラート画面から対象を選択して開始できます。個別リポジトリのアラート画面からも開始できます。
github.com とデータ所在地指定付き GitHub Enterprise Cloud で利用でき、Copilot ライセンスは不要です。
導入する組織は少数の対象から試し、CodeQL と併せたアラート確認・トリアージ手順を整えてください。告知では料金の詳細は示されていません。

## Take GitHub Mobile with you on iPhone Duo

- 公開日 (UTC): `2026-11-16 14:30:07`
- リンク: <https://github.blog/changelog/2026-11-16-take-github-mobile-with-you-on-iphone-duo>

GitHub Mobile の iOS 版が iPhone Duo に対応しました。
展開時の画面に合わせてレイアウトが変化し、縦タブから Copilot・Pull Requests・Issues・Notifications を切り替えられます。
対応版は App Store で公開済みで、対象端末の利用者は iOS アプリの更新により確認できます。
大画面をさらに活用する改善は継続予定です。リポジトリ設定の移行や管理者による有効化は告知されていません。
