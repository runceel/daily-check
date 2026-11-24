# runceel/ReactiveProperty

対象期間: 2026-11-17 04:59:18 〜 2026-11-19 01:03:42 (UTC)

## 統計サマリー

| 区分                       | 件数 |
| -------------------------- | ---- |
| マージ済み PR              | 1 |
| クローズ (未マージ) PR     | 0 |
| 新規 PR (オープン中)       | 3 |
| 新規 Issue                 | 2 |
| クローズ Issue             | 1 |

## ⚠ 重要な変更（要確認）

- **対応ターゲット変更** [runceel/ReactiveProperty#573](https://github.com/runceel/ReactiveProperty/pull/573)がマージされ、.NET 8/9の専用ターゲットが削除されました。Blazor・WPF系の利用者は新しいパッケージのTFM適合性を確認してください。Coreなどの`netstandard2.0`資産は残るため、全パッケージが一律に.NET 8/9から利用不能になるという意味ではありません。パッケージは未公開です。
- **統合廃止案・未マージ** [runceel/ReactiveProperty#572](https://github.com/runceel/ReactiveProperty/pull/572)はUWP/Xamarin統合・現行チュートリアルの除去案です。既存公開NuGetの削除・非掲載化は含まれず、利用者はマージとリリースを継続確認してください。

## 主要な変更点

- runceel/ReactiveProperty#573で6パッケージすべてに.NET 11資産を追加し、.NET 10と既存の.NET Standard 2.0/.NET Framework 4.7.2資産を該当パッケージで維持。C# 14と実行時・ソースの挙動は変更しません。
- Blazorは`net10.0/net11.0`、WPFは対応するWindows TFMと既存`net472`、R3.WPFは.NET 10/11 Windowsが対象です。.NET 8/9の専用資産削除はパッケージごとに影響を評価してください。
- runceel/ReactiveProperty#572はUWP/Xamarin除去とWPF中心の文書・例の更新案で、TFM更新とは独立した未マージ作業です。
- runceel/ReactiveProperty#574はR3/Coreの検証・コレクション割り当て削減案。示されたマイクロベンチマークは実アプリ全体の高速化を保証せず、遅延時間の改善が明確でないケースもあります。
- runceel/ReactiveProperty#575はプロパティパスの型付きアクセサー案ですが、ウォーム時の改善と引き換えに初回コストが増えるドラフトです。損益分岐点・Native AOT・trimmingは未確認で、採用済みではありません。

## 変化のあった PR / Issue

| 種別 | 番号 | タイトル | 状態 | 作者 | リンク |
| ---- | ---- | -------- | ---- | ---- | ------ |
| PR | #573 | Add .NET 11 targets and retire .NET 8/9 target legs | merged | runceel | <https://github.com/runceel/ReactiveProperty/pull/573> |
| PR | #572 | Remove retired UWP and Xamarin integrations | open | runceel | <https://github.com/runceel/ReactiveProperty/pull/572> |
| PR | #575 | Optimize property-path accessor invocation (first-use cost under evaluation) | open | runceel | <https://github.com/runceel/ReactiveProperty/pull/575> |
| PR | #574 | Reduce validation and collection allocations | open | runceel | <https://github.com/runceel/ReactiveProperty/pull/574> |
| Issue | #570 | .NET 11に対応し、.NET 8 / 9の専用ターゲットを削除する | closed | runceel | <https://github.com/runceel/ReactiveProperty/issues/570> |
| Issue | #571 | 現行コード・設定・ドキュメントからUWP/Xamarin対応を除去する | open | runceel | <https://github.com/runceel/ReactiveProperty/issues/571> |
