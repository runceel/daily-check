# github/copilot-sdk *(詳細モード)*

対象期間: 2026-11-17 04:59:18 〜 2026-11-19 01:03:42 (UTC)

> **収集先の移転を確認しました。** 設定上の`github/copilot-sdk`への検索は失敗しましたが、RESTリポジトリ取得と公式v2移行ガイドから、現在の公開先が[microsoft/copilot-sdk](https://github.com/microsoft/copilot-sdk)であることを確認し、移転先のIssue・リリース・文書で補完しました。
> 移転先のPR検索は0件、PR一覧APIはHTTP 404で、PR差分の網羅的収集は確認できません。以下ではPR件数を未集計とし、「マージなし」とは断定しません。

## 統計サマリー

| 区分 | 件数 |
| --- | --- |
| マージ済み・新規・未マージクローズ PR | 未集計（一覧API取得不可） |
| 新規 Issue | 3（うち1件は期間内にクローズ） |
| クローズ Issue | 15 |
| updated日付検索で得たIssue | 28（期間前の作成・既存Issue更新を含む） |

時刻はUTCの厳密な開始・終了境界で分類しています。Issueのクローズは修正完了と同義ではありません。

## ⚠ 重要な変更（要確認）

- **⚠ 破壊的変更** [SDK v2.0.0](https://github.com/microsoft/copilot-sdk/releases/tag/v2.0.0)が`2026-11-17 16:50:04 UTC`に公開。名称・パッケージ・名前空間・設定構造が変わり、再構成されたAPIには**protocol 4**が必要です。SDKとruntimeを組で更新してください。
- **既定のプロセス分離変更**: 全6言語SDKは既定でネイティブruntimeをアプリ内にロードします。in-processはsandboxではなく、native crashでアプリが終了し得ます。分離が必要ならspawned stdioを明示してください。
- **Agent Framework連携の互換性**: v2.0.1の移行ガイドでは、既存.NET/PythonのMicrosoft Agent Frameworkアダプターは旧SDK依存でv2非互換とされています。該当アプリは互換アダプターが利用可能になるまでv1を維持してください。
- **非冪等ツールの再実行報告** [microsoft/copilot-sdk#2926](https://github.com/microsoft/copilot-sdk/issues/2926): Pythonの結果RPC待機中に同じイベントが再配信されると、同一要求のhandlerが再実行される未解決報告です。外部書込などの担当者は要求ID単位の重複防止と結果不明時の再送方針を確認してください。特定CLIが実際に再配信する頻度・条件は報告単独では未確定です。
- **依存のセキュリティ報告の解消確認** [microsoft/copilot-sdk#2876](https://github.com/microsoft/copilot-sdk/issues/2876): クローズコメントはNode SDK 1.0.29/1.0.34でZod 4.6.7への更新を確認しています。他パッケージ由来の古いZodまで更新されるわけではないため、実際の依存解決を確認してください。

## このリポジトリの要点

- 最大の変更は**Microsoft Copilot SDK v2**への改称・移転、protocol 4、既定in-process化です。パッケージ名だけの置換では移行は完了しません。
- v2.0.1は旧Node拡張importなどの互換性を補い、サービスが広告するGPT-6.2 Sol/Astraの選択にも対応しますが、自動既定モデルは変えません。
- v1.0.34での解消確認が複数Issueに追加される一方、Pythonツール重複実行と常駐セッションごとの拡張/MCP起動コストは新たな監視対象です。
- 既存v1アプリ・Agent Framework連携とv2移行を分けて計画し、API互換性と実行プロセスの所有権を先に確認してください。

## 主要な PR (詳細)

PR・コミット全体は未集計のため、代わりに公式リリースとタグ固定の[移行ガイド](https://github.com/microsoft/copilot-sdk/blob/v2.0.1/docs/v2-breaking-changes.md)を詳細化しています。未取得のPR番号やコミット内容は推測していません。

### SDK v2.0.0 — パッケージ・接続・設定の破壊的変更

**変更概要**

GitHub Copilot SDKからMicrosoft Copilot SDKへ名称を変更し、公開リポジトリもMicrosoft配下へ移転しました。
既定runtimeを子プロセスからアプリ内に変更するとともに、spawnと既存runtimeへのattachを明示的に区別します。
client/sessionの設定を再構成し、暗黙の機能有効化を避けるためclient modeの指定を必須にします。
保存済みsession/event形式は設定再構成によって変更されないため、既存会話を書き換える移行は不要です。ただしruntime固有の設定・callbackは再指定が必要なものがあります。

**コミットレベルの詳細 (API 変化・破壊的変更)**

PRコミットは未取得です。以下は`v2.0.1`タグの公式移行ガイドから確認したAPI差分です。

| 項目 | 変更 |
| --- | --- |
| Node | `@github/copilot-sdk` → `@microsoft/copilot-sdk`、拡張entry pointも同様に移行 |
| .NET | `GitHub.Copilot.SDK` → `Microsoft.Copilot.SDK`、名前空間`GitHub.Copilot` → `Microsoft.Copilot` |
| Python | 配布名`github-copilot-sdk` → `microsoft-copilot-sdk`。`import copilot`は維持。共有import先の競合を避けるため旧配布を除去して移行 |
| Go / Rust / Java | Goは`github.com/microsoft/copilot-sdk/go/v2`、Rust crateは`copilot-sdk`、Javaは`com.microsoft:copilot-sdk`・`com.microsoft.copilot`へ変更 |
| 起動・接続 | `ForStdio/forStdio` → `ForSpawnedStdio/forSpawnedStdio`。旧spawn型TCPはSpawnedTcpへ、既存TCPへのattachはhostと整数portを渡す`ForTcp/forTcp`へ変更。URI factoryは削除 |
| runtime指定 | clientの`connection/Connection` → `runtime/Runtime`。プロセス環境・作業ディレクトリーはspawned接続側へ移動 |
| mode | 明示的`coding-agent/CodingAgent`または`empty/Empty`が必要。前者はホストfilesystemに触れるcoding toolsを含み、共有サービスは後者から必要機能だけを有効化する設計を検討 |
| session options | `SessionConfig` → `CreateSessionOptions`、`ResumeSessionConfig` → `ResumeSessionOptions`。Pythonはtyped keyword dictionaryとして公開 |
| ネスト化 | `reasoningEffort`等は`inference`、toolsは`tools.definitions`等、`onPermissionRequest`は`permissions.onRequest`へ整理 |
| attached接続 | 既存runtimeには起動専用の認証・telemetry・log levelなどを指定できず、黙って無視せず接続前に拒否 |

**⚠ 破壊的変更**としてruntime所有権・型名・引数・設定位置が変わります。直接JSON-RPCを呼ぶ統合はlifecycle payloadも更新する必要があります。
in-processはネイティブ資産のOS/CPU/libc互換性が必要で、非対応時に自動で子プロセスへ切り替わりません。
明示runtimeを指定していない場合は`COPILOT_SDK_DEFAULT_CONNECTION=stdio`でも既定を切り替えられますが、明示設定が優先されます。

リリースにはspill fileのowner-only権限、credentialを含むエラーメッセージ・detached shell出力のマスク、IPv6 unspecified宛のoutbound遮断などの保護修正も記載されています。個別CVEや影響版の範囲はこの一覧だけで推定しません。
また、Rustの`UserInputHandler::handle`/`ExitPlanModeHandler::handle`への任意request_id引数追加、`SessionMetadata`フィールド追加、旧hook種別の削除などもあるため、上表だけで全移行項目を網羅したとは扱わず公式ガイド・リリース全体を確認してください。

**既存利用者への影響**

先にプロセス所有権とmode、次にclient/session options、provider routingを移行してください。in-processでクラッシュ分離が失われる点は単なるAPI変更以上に重要です。
互換性のあるv1 SDKと同梱runtimeを使い続ける選択肢もあり、Agent Frameworkの既存アダプター利用者は特に一律更新を避けてください。

### SDK v2.0.1 — 旧拡張との互換性補完

- 公開日時 (UTC): `2026-11-18 06:17:55`
- ソース: [v2.0.1リリース](https://github.com/microsoft/copilot-sdk/releases/tag/v2.0.1)

**変更概要**

GPT-6.2 Sol/Astraの選択を、サービスが広告する場合に利用可能とするバックポートです。自動既定モデルは維持します。
NodeのESM/CommonJS拡張で旧`@github/copilot-sdk`と`/extension` importを新しいMicrosoft配下のimportと併用できるよう復元します。
既存Node拡張・直接RPC clientの旧option形式も支援します。

**コミットレベルの詳細 (API 変化・破壊的変更)**

公開リリースノートで確認した互換性修正です。v2のTypeScript型を弱めるものではなく、旧形式全般を無条件に正式APIへ戻す変更ではありません。PRコミットとの対応は未取得です。

**既存利用者への影響**

拡張importの互換性は改善しますが、v1アプリをそのままv2へ移せる保証ではありません。protocol・runtime・設定移行は引き続き必要です。

## その他の変更

| 種別・状態 | 参照 | 確認内容 |
| --- | --- | --- |
| 新規Issue・open | [microsoft/copilot-sdk#2928](https://github.com/microsoft/copilot-sdk/issues/2928) | 常駐する各sessionが拡張とMCP一式を起動するコストを報告。遅延起動・共有は要望で、実装済みではありません。session解放後も残る孤児プロセスの報告とは区別します。 |
| 新規Issue・closed/NOT_PLANNED | [microsoft/copilot-sdk#2927](https://github.com/microsoft/copilot-sdk/issues/2927) | CLI 1.0.113のprotocol 4とv1 SDKの不整合。v2公開・互換性ガイドを確認してクローズしており、v1にprotocol 4対応が追加された意味ではありません。 |
| 新規Issue・open | [microsoft/copilot-sdk#2926](https://github.com/microsoft/copilot-sdk/issues/2926) | Pythonツール結果RPC中の再配信でhandler重複実行。1.0.31の再現と1.0.34のソース確認を区別して報告しています。 |
| closed/COMPLETED | [microsoft/copilot-sdk#2876](https://github.com/microsoft/copilot-sdk/issues/2876) | v1のNode依存Zod 4.6.7を確認したという解決報告。 |
| closed/COMPLETED | [microsoft/copilot-sdk#2875](https://github.com/microsoft/copilot-sdk/issues/2875) | .NET 1.0.34の未知eventは基底SessionEventとなり、元のtype/dataはAdditionalPropertiesやToJsonで参照可能と説明。未知型の全生成ではありません。 |
| closed/COMPLETED | [microsoft/copilot-sdk#2798](https://github.com/microsoft/copilot-sdk/issues/2798) | Python 1.0.34のModelLimitsがmax_output_tokensを保持すると確認。v2は別の生成型を使用します。 |
| closed/COMPLETED | [microsoft/copilot-sdk#1749](https://github.com/microsoft/copilot-sdk/issues/1749) / [microsoft/copilot-sdk#1116](https://github.com/microsoft/copilot-sdk/issues/1116) / [microsoft/copilot-sdk#1113](https://github.com/microsoft/copilot-sdk/issues/1113) | v1.0.34/runtime 1.0.112で、共有session使用中フラグ、作成時agent指定、resume時MCP変更について解消確認コメント。確認言語・環境は各Issueを参照。 |
| closed/COMPLETED | [microsoft/copilot-sdk#1007](https://github.com/microsoft/copilot-sdk/issues/1007) / [microsoft/copilot-sdk#772](https://github.com/microsoft/copilot-sdk/issues/772) | 古いevent形式・attachments:nullのjournal再開を1.0.34/runtime 1.0.112で確認。会話削除を推奨するものではありません。 |
| closed/NOT_PLANNED | [microsoft/copilot-sdk#2161](https://github.com/microsoft/copilot-sdk/issues/2161) / [microsoft/copilot-sdk#2158](https://github.com/microsoft/copilot-sdk/issues/2158) | 子agentへのlarge output設定継承を現行組合せで再現できずクローズ。全環境で不具合不存在・新修正出荷を示すものではありません。 |
| closed/NOT_PLANNED | [microsoft/copilot-sdk#1004](https://github.com/microsoft/copilot-sdk/issues/1004) / [microsoft/copilot-sdk#742](https://github.com/microsoft/copilot-sdk/issues/742) | session内フォルダー消失・active session resume時event重複を、有限のライフサイクル確認で再現できずクローズ。 |
| closed/COMPLETED | [microsoft/copilot-sdk#2758](https://github.com/microsoft/copilot-sdk/issues/2758) | 文書配信対象のdocs/AGENTS.md除去をv1.0.34で確認。実行時不具合の修正ではありません。 |
| その他のクローズ | [microsoft/copilot-sdk#2916](https://github.com/microsoft/copilot-sdk/issues/2916) | SDKと無関係な外部コミットURLだけの投稿で、製品変更の根拠から除外。 |

既存Issueの更新として、per-server tool deferral、CLI bundle重複、Linux native依存、provider制限、agent選択なども検索結果にあります。新規・クローズ件数に既存の継続報告を混ぜてはいません。