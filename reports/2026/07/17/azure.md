# Azure 更新

取得元: <https://www.microsoft.com/releasecommunications/api/v2/azure/rss>

対象期間: 2026-07-15 04:59:27 〜 2026-07-17 00:36:43 (UTC)

対象期間内の Azure RSS 新着は **12 件** です。各見出し直下の TODO コメント（HTML コメント形式の指示行）を日本語解説に置き換えてください（原文の要約はそのコメント内に保持しています）。GA / リタイア / 破壊的変更など影響の大きい項目は優先して記述してください。

## Announcing: GitHub Copilot and Claude Code connectors in Microsoft Agent Framework

- 公開日 (UTC): `2026-07-15 18:58:30`
- リンク: <https://azure.microsoft.com/updates?id=563701>

GitHub Copilot と Claude Code へ接続する Microsoft Agent Framework のコネクターが GA になり、.NET/Python エージェントからカスタムアダプターなしでコーディング作業を委譲できます。対象開発者は既存の試験導入を GA コネクターへ移行し、権限や運用ポリシーを確認してください。

## Announcing: Multi-agent orchestration patterns including Magentic in Microsoft Agent Framework

- 公開日 (UTC): `2026-07-15 18:57:24`
- リンク: <https://azure.microsoft.com/updates?id=563571>

Magentic を含むマルチエージェント・オーケストレーションパターンが GA になりました。複数エージェントを組み合わせる .NET/Python 開発者は正式版の API と公開ベンチマークを確認し、プレビュー版からの移行要否を判断できます。

## Announcing: Agent Harness in Microsoft Agent Framework

- 公開日 (UTC): `2026-07-15 18:55:40`
- リンク: <https://azure.microsoft.com/updates?id=563546>

Microsoft Agent Framework の本番実行ランタイムである Agent Harness が GA になり、プレビュー版で試行中のエージェントを後方互換性を保ったまま本番へ移行できます。利用中のプレビュー環境は正式版の互換性と運用要件を確認して切り替えてください。

## Announcing: Multi-agent orchestration SDK with the Microsoft Foundry Agent Framework in C# and Python

- 公開日 (UTC): `2026-07-15 18:53:28`
- リンク: <https://azure.microsoft.com/updates?id=564312>

Microsoft Foundry が C# と Python 向けの統合マルチエージェント・オーケストレーション SDK、Agent Framework を導入しました。AutoGen と Semantic Kernel に分散していたパターンを統一的な抽象化へ集約するため、新規開発や既存実装の移行候補として API と移行ガイドを確認してください。

## Announcing: Tracing for Microsoft Agent Framework (Python and .NET)

- 公開日 (UTC): `2026-07-15 18:51:45`
- リンク: <https://azure.microsoft.com/updates?id=564071>

Microsoft Foundry の Agent Framework 向けトレーシングが Python と .NET でパブリックプレビューになり、推論、ツール呼び出し、モデル連携を実行時に可視化できます。評価・障害解析を行う開発者はプレビューとして導入し、ログに含まれる機密情報の扱いを確認してください。

## Announcing: CodeAct pattern and Hyperlight containers in Microsoft Agent Framework

- 公開日 (UTC): `2026-07-15 18:50:14`
- リンク: <https://azure.microsoft.com/updates?id=563566>

Agent Framework に、複数のツール呼び出しを単一の実行可能コードブロックへまとめる CodeAct パターンと Hyperlight コンテナーがパブリックプレビューで追加されました。低遅延化やコード実行を試す開発者は、隔離・権限・コストを検証したうえで利用してください。

## Announcing: Episodic procedural memory in Microsoft Agent Framework

- 公開日 (UTC): `2026-07-15 18:48:54`
- リンク: <https://azure.microsoft.com/updates?id=563561>

Agent Framework に、成功したタスクの手順やツール選択を記録し、類似要求で再利用するエピソード型手続きメモリがパブリックプレビューで追加されました。反復作業を自動化する開発者は、保存データの保持期間と個人・機密情報の扱いを確認して試行してください。

## Announcing: Agent Channel for Microsoft Agent Framework multi-agent communication

- 公開日 (UTC): `2026-07-15 18:47:41`
- リンク: <https://azure.microsoft.com/updates?id=563556>

Agent Framework に、エージェント間で型付きの構造化メッセージを送受信できる Agent Channel がパブリックプレビューで追加されました。専用ルーティングを実装している開発者は、要求/応答と片方向通知のパターンを検証し、プレビュー制限を確認してください。

## [In preview] Public Preview: Azure SQL updates for mid-July 2026 

- 公開日 (UTC): `2026-07-15 17:50:44`
- リンク: <https://azure.microsoft.com/updates?id=567426>

Azure SQL では、Visual Studio Code で Quick Queries、結果グリッド、クエリエディターのショートカットを設定できる機能など、7 月中旬の更新が公開されました。VS Code で Azure SQL を操作する利用者は、対象拡張機能を更新して作業効率化を確認できます。

## [Launched] Generally Available: Expanding Azure Arc SQL Migration with SQL Server on Azure Virtual Machines 

- 公開日 (UTC): `2026-07-15 17:35:31`
- リンク: <https://azure.microsoft.com/updates?id=567362>

Azure Arc の移行ソリューションが SQL Server on Azure Virtual Machines を移行先として GA でサポートしました。Arc 対応 SQL Server は同じ統合フローで Azure SQL Managed Instance または Azure VM 上の SQL Server へ移行できるため、既存環境の移行計画を見直せます。

## [In preview] Public Preview: Advanced platform metrics in Azure Monitor

- 公開日 (UTC): `2026-07-15 15:30:11`
- リンク: <https://azure.microsoft.com/updates?id=567726>

Azure Monitor の高度なプラットフォーム メトリックが 7 月 15 日からパブリックプレビューになり、対応サービスの性能、リソース正常性、運用傾向を詳しく把握できます。監視を強化したい利用者は対象サービスと追加コスト・保持要件を確認して試行してください。

## Announcing: DevUI Agent Inspector for Microsoft Agent Framework

- 公開日 (UTC): `2026-07-15 15:15:25`
- リンク: <https://azure.microsoft.com/updates?id=563551>

Agent Framework に、モデル呼び出し、ツール実行、中間状態をツリー表示し、実行の一時停止・再実行・プロンプト編集ができるローカル DevUI Agent Inspector がパブリックプレビューで追加されました。開発者はデバッグ用途で試せますが、ローカル画面に表示される入力や状態の機密性を確認してください。
