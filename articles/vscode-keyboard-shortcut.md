---
title: "VSCode キーボードショートカット辞書"
emoji: "🐈"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: ["VSCode"]
published: true
---

## なにこれ

VSCode のキーボードショートカットを覚えるために試行錯誤しています。
目的ごとにサマライズされたキーボードショートカットのドキュメントはちらほら見かけますが、キーごとにサマライズされたドキュメントを見かけなかったので、試しにダラダラと書き残して行きます。

キーボードショートカットは、キーによって振る舞いが似たものが登録されています。
キーに割り当てられた振る舞いを知ることによって、ショートカットを覚える近道になるといいなと思っています。

以下、この記事の取扱説明として、
- 以下にリストアップするのは、「キーボードショートカットビュー」で「ソース」が「既定」になっているものに限定しています。
- 「TODO:」は、これから動作を確認して詳細を追記していく予定です。
- 「MEMO:」は、筆者の個人的な「使いたい度」をメモしてあります。
- 呼称のブレがあるので、随時適切な呼称に訂正していきます。
- 拡張機能を作る際のキーボードショートカットキーの重複を避けるために参照していただけると思います。

## 備忘録

キーボードショートカット一覧の出し方

`Ctrl-K` `Ctrl-S`

![キーボードショートカット一覧](https://storage.googleapis.com/zenn-user-upload/c7ee967cbfe3-20220227.png)

## メモ

`Ctrl`+`K` と `Ctrl`+`;` は特別な入力の prefix になっている。
`Ctrl`+`K` は、エディタエリアの表示関連の修飾キー。
`Ctrl`+`;` は、テスト関連のコマンドの修飾キー。

## A

全選択

### `Ctrl`+`A`

#### すべてを選択

コマンドID: `editor.action.selectAll`

内容を全選択します。
エディタエリアにフォーカスしているとき、フォーカスしているファイルの内容を全選択します。
サイドバーにフォーカスしているとき、サイドバーの内容を全選択します。

#### list.selectAll

コマンドID: `list.selectAll`
<!-- "when": "listFocus && listSupportsMultiselect && !inputFocus" -->

TODO:

### `Ctrl`+`;` `A`

#### テスト: すべてのテストを実行する

コマンドID: `testing.runAll`

TODO:

### `Ctrl`+`;` `Ctrl`+`A`

#### テスト: すべてのテストをデバッグする

コマンドID: `testing.debugAll`

TODO:

### `Ctrl`+`K` `Ctrl`+`A`

#### keybindings.editor.addKeybinding

コマンドID: `keybindings.editor.addKeybinding`
<!-- "when": "inKeybindings && keybindingFocus" -->

キーバインディングエディタでキーバインドを追加します。

## B

いろいろ

### `Ctrl`+`B`

#### 表示: プライマリ サイド バーの表示/非表示を切り替える

コマンドID: `workbench.action.toggleSidebarVisibility`

サイドバーの表示 / 非表示を切り替えます。

### `Ctrl`+`Shift`+`B`

#### タスク: ビルド タスクの実行

コマンドID: `workbench.action.tasks.build`
<!-- "when": "taskCommandsRegistered" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`B`

#### 選択アンカーの設定

コマンドID: `editor.action.setSelectionAnchor`
<!-- "when": editorTextFocus -->

選択アンカーの初期位置を設定します。
このキーの後に、選択アンカーの終点位置で `Ctrl`+`K` `Ctrl`+`K` をタイプすると、
初期位置から終点位置までが選択状態になります。
`Ecs` で選択アンカーを解除します。

## C

### `Ctrl`+`C`

なんらかのオブジェクトをコピーしてクリップボードに記憶します。

#### コピー

コマンドID: `editor.action.clipboardCopyAction`

エディタエリアの文字列をコピーします。

#### keybindings.editor.copyKeybindingEntry

コマンドID: `keybindings.editor.copyKeybindingEntry`
<!-- "when": "inKeybindings && keybindingFocus && !whenFocus" -->

キーボードショートカットビューで settings の json をコピーします。

#### problems.action.copy

コマンドID: `problems.action.copy`

パネルエリアの「Problems (問題)」タブにリストアップされている警告などを json 形式でコピーします。
<!-- "when": "problemsVisibility && !relatedInformationFocus && focusedView == 'workbench.panel.markers.view'" -->

#### search.action.copyMatch

コマンドID: `search.action.copyMatch`
<!-- "when": "fileMatchOrMatchFocus" -->

アクティビティバーの「検索」が選択されていて(検索ビュー)、サイドバーにリストアップされている検索結果をコピーします。

#### ターミナル: 選択内容のコピー

コマンドID: `workbench.action.terminal.copySelection`
<!-- "when": "terminalFocus && terminalHasBeenCreated && terminalTextSelected || terminalFocus && terminalProcessSupported && terminalTextSelected" -->

パネルエリアの「ターミナル」で選択中の文字列をコピーします。

#### filesExplorer.copy

コマンドID: `filesExplorer.copy`
<!-- "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !inputFocus" -->

アクティビティバーの「エクスプローラー」が選択されていて(エクスプローラービュー)、フォルダツリー内のファイルをコピーします。

#### remote.tunnel.copyAddressInline

コマンドID: `remote.tunnel.copyAddressInline`
<!-- "when": "tunnelViewFocus && tunnelType == 'Detected' && tunnelViewMultiSelection == 'undefined' || tunnelViewFocus && tunnelType == 'Forwarded' && tunnelViewMultiSelection == 'undefined'" -->

TODO:

### `Alt`+`C`

検索するときの、大文字 / 小文字を区別するかを切り替えます。

#### toggleFindCaseSensitive

コマンドID: `toggleFindCaseSensitive`
<!-- "when": "editorFocus" -->

エディタエリアで検索するとき、大文字 / 小文字の区別を切り替えます。

#### toggleSearchCaseSensitive

コマンドID: `toggleSearchCaseSensitive`
<!-- "when": "searchViewletFocus" -->

アクティビティバーの「検索」が選択されていて(検索ビュー)、サイドバーで検索するとき、大文字 / 小文字の区別を切り替えます。

#### 検索エディター: 大文字と小文字の区別を切り替える

コマンドID: `toggleSearchEditorCaseSensitive`
<!-- "when": "inSearchEditor && searchInputBoxFocus" -->

エディタエリアで「検索エディター」の入力フォームにフォーカスされているとき、大文字 / 小文字の区別を切り替えます。

#### ターミナル: 大文字小文字を区別した検索に切り替える

コマンドID: `workbench.action.terminal.toggleFindCaseSensitive`
<!-- "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported" -->

パネルエリアの「ターミナル」で検索するとき、大文字 / 小文字の区別を切り替えます。

### `Ctrl`+`Shift`+`C`

#### ターミナル: 選択内容のコピー

コマンドID: `workbench.action.terminal.copySelection`
<!-- "when": "terminalFocus && terminalHasBeenCreated && terminalTextSelected || terminalFocus && terminalProcessSupported && terminalTextSelected" -->

パネルエリアの「ターミナル」で選択中の文字列をコピーします。
TODO: `Ctrl`+`C` と同様？

#### 新しい外部ターミナルを開く

コマンドID: `workbench.action.terminal.openNativeConsole`
<!-- "when": "!terminalFocus" -->

パネルエリアの「ターミナル」にフォーカスされていないとき、規定の外部ターミナルを起動します。
(Windows の場合はコマンドプロンプトが起動します。)

### `Shift`+`Alt`+`C`

#### ファイル: アクティブ ファイルのパスのコピー

コマンドID: `copyFilePath`
<!-- "when": "!editorFocus" -->

アクティビティバーの「エクスプローラー」が選択されているとき(エクスプローラービュー)、アクティブなファイルの絶対パスをコピーします。
(`Ctrl`+`K` `Ctrl`+`Shift`+`C` は「相対パス」をコピーします。)

### `Ctrl`+`K` `C`

#### ファイル: クリップボードとアクティブ ファイルを比較

コマンドID: `workbench.files.action.compareWithClipboard`

TODO:

### `Ctrl`+`K` `Ctrl`+`C`

いろいろ

#### 行コメントの追加

コマンドID: `editor.action.addCommentLine`
<!-- "when": "editorTextFocus && !editorReadonly" -->

エディタエリアで、行コメントを追加します。

#### ノートブック: セルの入力を折りたたむ

コマンドID: `notebook.cell.collapseCellInput`
<!-- "when": "notebookCellListFocused && !inputFocus && !notebookCellInputIsCollapsed" -->

TODO:

#### ノートブック: セルの入力を展開する

コマンドID: `notebook.cell.expandCellInput`
<!-- "when": "notebookCellInputIsCollapsed && notebookCellListFocused" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`Shift`+`C`

#### ファイル: アクティブ ファイルの相対パスをコピー

コマンドID: `copyRelativeFilePath`
<!-- "when": "!editorFocus" -->

アクティビティバーの「エクスプローラー」が選択されているとき(エクスプローラービュー)、アクティブなファイルの相対パスをコピーします。
(`Shift`+`Alt`+`C` は「絶対パス」をコピーします。)

### `Ctrl`+`;` `C`

#### テスト: カーソル位置でテストを実行

コマンドID: `testing.runAtCursor`
<!-- "when": "editorTextFocus" -->

TODO:

### `Ctrl`+`;` `Ctrl`+`C`

#### テスト: カーソル位置でテストをデバッグ

コマンドID: `testing.debugAtCursor`
<!-- "when": "editorTextFocus" -->

TODO:

## D

### `Ctrl`+`D`

#### 選択した項目を次の一致項目に追加

コマンドID: `editor.action.addSelectionToNextFindMatch`
<!-- "when": "editorFocus" -->

エディタエリアで選択した文字列を、そのエディタエリア内で検索する。
`Ctrl`+`D` を連続でタイプすると、次の検索結果に移動します。

### `Ctrl`+`Shift`+`D`

#### 表示: 実行とデバッグ を表示

コマンドID: `workbench.view.debug`
<!-- "when": "viewContainer.workbench.view.debug.enabled" -->

アクティビティバーの「Run & Debug (実行とデバッグ)」を選択状態にします。(サイドバーに実行とデバッグが表示されます。)

### `Shift`+`Alt`+`D`

#### コンテンツから言語を検出する

コマンドID: `editor.detectLanguage`
<!-- "when": "editorTextFocus && !notebookEditable" -->

TOOD:

#### ノートブック: セルの検出された言語を承諾する

コマンドID: `notebook.cell.detectLanguage`
<!-- "when": "notebookCellEditable && notebookEditable" -->

TOOD:

### `Ctrl`+`K` `D`

#### ファイル: 保存済みファイルと作業中のファイルを比較

コマンドID: `workbench.files.action.compareWithSaved`

TOOD:

### `Ctrl`+`K` `Ctrl`+`D`

#### 最後に選択した項目を次の一致項目に移動

コマンドID: `editor.action.moveSelectionToNextFindMatch`
<!-- "when": "editorFocus" -->

TOOD:

## E

### `Ctrl`+`E`

#### ファイルに移動

コマンドID: `workbench.action.quickOpen`

TODO:

#### workbench.action.quickOpenNavigateNextInFilePicker

コマンドID: `workbench.action.quickOpenNavigateNextInFilePicker`
<!-- "when": "inFilesPicker && inQuickOpen" -->

TODO:

### `Ctrl`+`Shift`+`E`

#### 表示: エクスプローラー を表示

コマンドID: `workbench.action.quickOpenNavigatePreviousInFilePicker`
<!-- "when": "viewContainer.workbench.view.explorer.enabled" -->

アクティビティバーの「Explorer (エクスプローラー)」を選択状態にします。(サイドバーにフォルダツリーが表示されます。)

#### workbench.action.quickOpenNavigatePreviousInFilePicker

コマンドID: `workbench.view.explorer`
<!-- "when": "inFilesPicker && inQuickOpen" -->

TODO:

### `Ctrl`+`K` `E`

#### エクスプローラー: 開いているエディター ビューにフォーカスを置く

コマンドID: `workbench.files.action.focusOpenEditorsView`
<!-- "when": "workbench.explorer.openEditorsView.active" -->

アクティビティバーの「Explorer (エクスプローラー)」を選択状態にして、サイドバーに「開いているエディター」のパネルが追加され、エディタエリアで表示されているファイルの一覧が表示されます。

### `Ctrl`+`K` `Ctrl`+`E`

#### keybindings.editor.defineWhenExpression

コマンドID: `keybindings.editor.defineWhenExpression`
<!-- "when": "inKeybindings && keybindingFocus" -->

キーボードショートカットビューにフォーカスしているとき、選択しているキーボードショートカットの「When (いつ)」の値を編集状態にします。

### `Ctrl`+`;` `E`

#### テスト: 失敗したテストの再実行

コマンドID: `testing.reRunFailTests`

TODO:

### `Ctrl`+`;` `Ctrl`+`E`

#### テスト: 失敗したテストのデバッグ

コマンドID: `testing.debugFailTests`

TODO:

## F

検索、フォーマット関連

### `Ctrl`+`F`

#### 検索

コマンドID: `actions.find`
<!-- "when": "editorFocus || editorIsOpen" -->

エディタエリアをフォーカスしているとき、エディタエリアの文字列を検索するフォームを表示します。
`Esc` で検索を解除できます。

#### editor.action.extensioneditor.showfind

コマンドID: `editor.action.extensioneditor.showfind`
<!-- "when": "!editorFocus && activeEditor == 'workbench.editor.extension'" -->

TODO:

#### editor.action.webvieweditor.showFind

コマンドID: `editor.action.webvieweditor.showFind`
<!-- "when": "webviewFindWidgetEnabled && !editorFocus && activeEditor == 'WebviewEditor'" -->

TODO:

#### フィルター対象の REPL フォーカス コンテンツ

コマンドID: `repl.action.filter`
<!-- "when": "inDebugRepl && textInputFocus" -->

TODO:

#### 基本設定: 設定検索にフォーカス

コマンドID: `settings.action.search`
<!-- "when": "inSettingsEditor" -->

設定ビューで、検索フォームにフォーカスする。

#### keybindings.editor.searchKeybindings

コマンドID: `keybindings.editor.searchKeybindings`
<!-- "when": "inKeybindings" -->

キーボードショートカットビューで、フィルタする入力フォームにフォーカスする。

#### list.find

コマンドID: `list.find`
<!-- "when": "listFocus && listSupportsFind" -->

TODO:

#### notebook.find

コマンドID: `notebook.find`
<!-- "when": "notebookEditorFocused && !editorFocus && activeEditor == 'workbench.editor.notebook'" -->

TODO:

#### problems.action.focusFilter

コマンドID: `problems.action.focusFilter`
<!-- "when": "focusedView == 'workbench.panel.markers.view'" -->

パネルエリアの「Problems (問題)」タブにフォーカスしているとき、フィルタする入力フォームにフォーカスします。

#### ターミナル: 検索にフォーカスを置く

コマンドID: `workbench.action.terminal.focusFind`
<!-- "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported" -->

パネルエリアの「ターミナル」で、ターミナル内の文字列を検索するフォームを表示します。

### `Ctrl`+`Shift`+`F`

#### 検索: フォルダーを指定して検索

コマンドID: `workbench.action.findInFiles`

TODO:

#### 表示: 検索 を表示

コマンドID: `workbench.view.search`
<!-- "when": "workbench.view.search.active && neverMatch =~ /doesNotMatch/" -->

アクティビティバーの「Search (検索)」を選択状態にして、サイドバーの入力フォームにフォーカスします。

#### ターミナル: ワークスペースで検索

コマンドID: `workbench.action.terminal.searchWorkspace`
<!-- "when": "terminalFocus && terminalProcessSupported && terminalTextSelected" -->

パネルエリアの「ターミナル」でターミナル内で文字列を選択中に、アクティビティバーの「Search (検索)」を選択状態にして、文字列の検索結果一覧をサイドバーに表示します。

### `Shift`+`Alt`+`F`

#### ドキュメントのフォーマット

コマンドID: `editor.action.formatDocument`
<!-- "when": "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor" -->

エディタエリアの内容を、ファイルタイプごとの規定のフォーマッタでフォーマットします。

#### ドキュメントのフォーマット

コマンドID: `editor.action.formatDocument.none`
<!-- "when": "editorTextFocus && !editorHasDocumentFormattingProvider && !editorReadonly" -->

エディタエリアの内容を、ファイルタイプごとの規定のフォーマッタでフォーマットします。

#### セルを書式設定する

コマンドID: `notebook.formatCell`
<!-- "when": "editorHasDocumentFormattingProvider && editorTextFocus && inCompositeEditor && notebookEditable && !editorReadonly && activeEditor == 'workbench.editor.notebook'" -->

TODO:

#### filesExplorer.findInFolder

コマンドID: `filesExplorer.findInFolder`
<!-- "when": "explorerResourceIsFolder && explorerViewletVisible && filesExplorerFocus && !inputFocus" -->

サイドバーのエクスプローラーにフォーカスがあるとき、アクティビティバーの「Search (検索)」を選択状態にして、エディタエリアで開いているファイルの階層以下を対象に検索フォームにフォーカスします。

#### ノートブック: ノートブックのフォーマット

コマンドID: `notebook.format`
<!-- "when": "notebookEditable && !editorTextFocus && activeEditor == 'workbench.editor.notebook'" -->

TODO:

### `Ctrl`+`K` `F`

#### ワークスペース: ワークスペースを閉じる

コマンドID: `workbench.action.closeFolder`
<!-- "when": "emptyWorkspaceSupport && workbenchState != 'empty'" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`F`

#### 選択範囲のフォーマット

コマンドID: `editor.action.formatSelection`
<!-- "when": "editorHasDocumentSelectionFormattingProvider && editorTextFocus && !editorReadonly" -->

TODO:

### `Ctrl`+`;` `F`

#### テスト: 現在のファイルでテストを実行

コマンドID: `testing.runCurrentFile`
<!-- "when": "editorTextFocus" -->

TODO:

### `Ctrl`+`;` ``Ctrl`+``F`

#### テスト: 現在のファイルでテストをデバッグ

コマンドID: `testing.debugCurrentFile`
<!-- "when": "editorTextFocus" -->

TODO:

## G

行移動、ソース管理

### `Ctrl`+`G`

#### 行/列に移動

コマンドID: `workbench.action.gotoLine`

行/列番号入力フォームが表示されます。

### `Ctrl`+`Shift`+`G`

#### 表示: ソース管理 を表示

コマンドID: `workbench.view.scm`
<!-- "when": "workbench.scm.active" -->

アクティビティバーの「Source Control (ソース管理)」を選択状態にして、サイドバーにソース管理を表示します。

## H

置換、その他

### `Ctrl`+`H`

#### 置換

コマンドID: `editor.action.startFindReplaceAction`
<!-- "when": "editorFocus || editorIsOpen" -->

エディタエリアの文字列を置換するフォームが表示されます。

### `Alt`+`H`

#### テスト: クイック表示でのテスト履歴の切り替え

コマンドID: `testing.toggleTestingPeekHistory`
<!-- "when": "testing.isPeekVisible" -->

TODO:

### `Ctrl`+`Shift`+`H`

#### 検索: 複数のファイルで置換

コマンドID: `workbench.action.replaceInFiles`

アクティビティバーの「Search (検索)」を選択状態にして、サイドバーに置換フォームを表示し検索文字列入力フォームにフォーカスします。

### `Shift`+`Alt`+`H`

#### editor.showCallHierarchy

コマンドID: `editor.showCallHierarchy`
<!-- "when": "editorHasCallHierarchyProvider && editorTextFocus && !inReferenceSearchEditor" -->

TODO:

#### editor.showIncomingCalls

コマンドID: `editor.showIncomingCalls`
<!-- "when": "callHierarchyVisible && callHierarchyDirection == 'outgoingCalls'" -->

TODO:

#### editor.showOutgoingCalls

コマンドID: `editor.showOutgoingCalls`
<!-- "when": "callHierarchyVisible && callHierarchyDirection == 'incomingCalls'" -->

TODO:

#### editor.showSubtypes

コマンドID: `editor.showSubtypes`
<!-- "when": "typeHierarchyVisible && typeHierarchyDirection == 'supertypes'" -->

TODO:

#### editor.showSupertypes

コマンドID: `editor.showSupertypes`
<!-- "when": "typeHierarchyVisible && typeHierarchyDirection == 'subtypes'" -->

TODO:

#### references-view.showCallHierarchy

コマンドID: `references-view.showCallHierarchy`
<!-- "when": "editorHasCallHierarchyProvider" -->

TODO:

## I

入力補助、その他

### `Ctrl`+`I`

#### 候補をトリガー

コマンドID: `editor.action.triggerSuggest`
<!-- "when": "editorHasCompletionItemProvider && textInputFocus && !editorReadonly" -->

エディタエリアがフォーカスしているとき、カーソル位置で可能な入力候補を表示します。
再度 `Ctrl`+`I` タイプすると、[toggleSuggestionDetails](#togglesuggestiondetails) が表示されます。

#### toggleSuggestionDetails

コマンドID: `toggleSuggestionDetails`
<!-- "when": "suggestWidgetVisible && textInputFocus" -->

エディタエリアで入力候補を表示しているとき、候補の詳細を表示します。
再度 `Ctrl`+`I` タイプすると候補の詳細を閉じます。
つまり、[候補をトリガー](#候補をトリガー) と [toggleSuggestionDetails](#togglesuggestiondetails) が交互に切り替わります。

### `Ctrl`+`Shift`+`I`

#### 開発者: 開発者ツールの切り替え

コマンドID: `workbench.action.toggleDevTools`
<!-- "when": "isDevelopment" -->

TODO:

### `Shift`+`Alt`+`I`

#### カーソルを行末に挿入

コマンドID: `editor.action.insertCursorAtEndOfEachLineSelected`
<!-- "when": "editorTextFocus" -->

エディタエリアがフォーカスしているとき、選択した文字列の末尾にカーソルを移動し挿入モードになります。
複数行選択されているときは、複数行の末尾に挿入モードになります。

### `Ctrl`+`K` `Ctrl`+`I`

#### ホバーの表示

コマンドID: `editor.action.showHover`
<!-- "when": "editorTextFocus" -->

TODO:

#### デバッグ: ホバーの表示

コマンドID: `editor.debug.action.showDebugHover`
<!-- "when": "editorTextFocus && inDebugMode" -->

TODO:

#### workbench.action.showTreeHover

コマンドID: `workbench.action.showTreeHover`
<!-- "when": "customTreeView && listFocus && !inputFocus" -->

TODO:

### `Ctrl`+`;` `Ctrl`+`I`

#### テスト: インライン テスト出力の切り替え

コマンドID: `testing.toggleInlineTestOutput`

TODO:

## J

検索、フォーマット関連

### `Ctrl`+`J`

#### 表示: パネルの表示/非表示の切り替え

コマンドID: `workbench.action.togglePanel`

パネルエリアの表示 / 非表示を切り替えます。

### `Ctrl`+`Shift`+`J`

#### workbench.action.search.toggleQueryDetails

コマンドID: `workbench.action.search.toggleQueryDetails`
<!-- "when": "inSearchEditor || searchViewletFocus" -->

エディタエリアで検索ビューを開いているとき、詳細フィルターのフォームの表示 / 非表示を切り替えます。

### `Alt`+`Windows`+`J`

#### ノートブック: 次のセルと結合する

コマンドID: `notebook.cell.joinBelow`
<!-- "when": "notebookEditorFocused" -->

TODO:

### `Shift`+`Alt`+`Windows`+`J`

#### ノートブック: 前のセルと結合する

コマンドID: `notebook.cell.joinAbove`
<!-- "when": "notebookEditorFocused" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`J`

#### すべて展開

コマンドID: `editor.unfoldAll`
<!-- "when": "editorTextFocus && foldingEnabled" -->

エディタエリアをフォーカスしているとき、折りたたみを全て展開します。

## K

`Ctrl`+`K` は、エディタエリアの表示関連の修飾キーに使われているため、それ以外のショートカットキーをリストアップします。

### `Ctrl`+`Shift`+`K`

#### 行の削除

コマンドID: `editor.action.deleteLines`
<!-- "when": "textInputFocus && !editorReadonly" -->

エディタエリアのカーソルがある行を削除します。

### `Alt`+`K`

#### keybindings.editor.recordSearchKeys

コマンドID: `keybindings.editor.recordSearchKeys`
<!-- "when": "inKeybindings && inKeybindingsSearch" -->

キーボードショートカットビューのフィルタ入力フォームにフォーカスしているとき、このキー (`Alt`+`K`) の次の入力キーを記憶します。
`Esc` で記憶モードを抜けます。

## L

TODO:

### `Ctrl`+`L`

#### 線の選択を展開する

コマンドID: `expandLineSelection`
<!-- "when": "textInputFocus" -->

エディタエリアのカーソルがある１行を選択状態にします。

### `Ctrl`+`L`

#### ノートブック: アクティブ セルを中央に置く

コマンドID: `notebook.centerActiveCell`
<!-- "when": "notebookEditorFocused" -->

TODO:

### `Shift`+`L`

#### ノートブック: ノートブック行番号の切り替え

コマンドID: `notebook.toggleLineNumbers`
<!-- "when": "notebookEditorFocused && !inputFocus" -->

TODO:

### `Alt`+`L`

#### toggleFindInSelection

コマンドID: `toggleFindInSelection`
<!-- "when": "editorFocus" -->

TODO:

#### 検索エディター: コンテキスト行を切り替える

コマンドID: `toggleSearchEditorContextLines`
<!-- "when": "inSearchEditor" -->

TODO:

### `Ctrl`+`Shift`+`L`

#### 一致するすべての出現箇所を選択します

コマンドID: `editor.action.selectHighlights`
<!-- "when": "editorFocus" -->

エディタエリアで選択中の文字列が一致する全ての出現箇所を選択します。
`Esc` で選択を解除します。

#### addCursorsAtSearchResults

コマンドID: `addCursorsAtSearchResults`
<!-- "when": "fileMatchOrMatchFocus && searchViewletVisible" -->

TODO:

#### 検索エディター: すべての一致を選択

コマンドID: `selectAllSearchEditorMatches`
<!-- "when": "inSearchEditor" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`L`

#### 折りたたみの切り替え

コマンドID: `editor.toggleFold`
<!-- "when": "editorTextFocus && foldingEnabled" -->

エディタエリアでカーソルがある行の折りたたみを切り替えます。

### `Ctrl`+`;` `L`

#### テスト: 最後の実行の再実行

コマンドID: `testing.reRunLastRun`

TODO:

### `Ctrl`+`;` `Ctrl`+`L`

#### テスト: 最後の実行のデバッグ

コマンドID: `testing.debugLastRun`

TODO:

## M

TODO:

### `M`

#### ノートブック: セルを Markdown に変更する

コマンドID: `notebook.cell.changeToMarkdown`
<!-- "when": "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook' && notebookCellType == 'code'" -->

TODO:

### `Ctrl`+`M`

#### Tab キーを切り替えるとフォーカスが移動します

コマンドID: `editor.action.toggleTabFocusMode`

TODO:

### `Ctrl`+`Shift`+`M`

#### 表示: 問題 の切り替え

コマンドID: `workbench.actions.view.problems`
<!-- "when": "workbench.panel.markers.view.active" -->

パネルエリアの「Problems (問題)」タブの表示 / 非表示を切り替えます。

### `Ctrl`+`K` `M`

#### 言語モードの変更

コマンドID: `workbench.action.editor.changeLanguageMode`
<!-- "when": "!notebookEditorFocused" -->

TODO:

### `Ctrl`+`;` `Ctrl`+`M`

#### テスト: 出力をクイック表示する

コマンドID: `testing.openOutputPeek`

TODO:

## N

TODO:

### `Ctrl`+`N`

#### ファイル: 無題の新規ファイル

コマンドID: `workbench.action.files.newUntitledFile`

無題の新規ファイルを新しいタブで開きます。

### `Ctrl`+`Shift`+`N`

#### 新しいウィンドウ

コマンドID: `workbench.action.newWindow`

新しいVSCodeのウィンドウを開きます。

### `Ctrl`+`Alt`+`Windows`+`N`

#### 作成: 新しいファイル

コマンドID: `welcome.showNewFileEntries`

無題の新規ファイルを、ファイルの種類を選択後に新しいタブで開きます。

### `Ctrl`+`K` `Ctrl`+`N`

#### Git: 選択した範囲のステージを解除

コマンドID: `git.unstageSelectedRanges`
<!-- "when": "isInDiffEditor" -->

エディタエリアの差分ビューで、選択した範囲のステージを解除します。

## O

TODO:

### `Ctrl`+`O`

#### ファイル: ファイルを開く

コマンドID: `workbench.action.files.openFile`
<!-- "when": "true" -->

ファイルを開くプロンプトを表示します。

#### ファイル: 開く

コマンドID: `workbench.action.files.openFileFolder`
<!-- "when": "isMacNative && openFolderWorkspaceSupport" -->

TODO:

#### ファイル: フォルダーを開く

コマンドID: `workbench.action.files.openFolderViaWorkspace`
<!-- "when": "!openFolderWorkspaceSupport && workbenchState == 'workspace'" -->

TODO:

#### workbench.action.files.openLocalFile

コマンドID: `workbench.action.files.openLocalFile`
<!-- "when": "remoteFileDialogVisible" -->

TODO:

### `Ctrl`+`Shift`+`O`

#### エディターでシンボルに移動

コマンドID: `workbench.action.gotoSymbol`

プロンプトを表示して、`@` が入力された状態になります。
(プロンプトの先頭を `@` から始めると、エディタエリアで開いているファイルのシンボルを指定して移動することができます。)

### `Shift`+`Alt`+`O`

#### インポートを整理

コマンドID: `editor.action.organizeImports`
<!-- "when": "editorTextFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)source\\.organizeImports\\b/" -->

TODO:

### `Ctrl`+`K` `O`

#### ファイル: 新しいウィンドウでアクティブ ファイルを開く

コマンドID: `workbench.action.files.showOpenedFileInNewWindow`
<!-- "when": "emptyWorkspaceSupport" -->

エディタエリアで開いているファイルを、VSCodeの新しいウィンドウでも開きます。

### `Ctrl`+`K` `Ctrl`+`O`

#### ファイル: フォルダーを開く

コマンドID: `workbench.action.files.openFolder`
<!-- "when": "openFolderWorkspaceSupport" -->

フォルダを開くプロンプトを表示します。
フォルダを開くと、そのウィンドウを閉じて開き直します。

#### workbench.action.files.openLocalFolder

コマンドID: `workbench.action.files.openLocalFolder`
<!-- "when": "remoteFileDialogVisible" -->

TODO:

### `Ctrl`+`;` `Ctrl`+`O`

#### テスト: 出力の表示

コマンドID: `testing.showMostRecentOutput`
<!-- "when": "testing.hasAnyResults" -->

TODO:

## P

TODO:

### `Ctrl`+`P`

#### ファイルに移動

コマンドID: `workbench.action.quickOpen`

ファイルを開くプロンプトを表示します。

#### workbench.action.quickOpenNavigateNextInFilePicker

コマンドID: `workbench.action.quickOpenNavigateNextInFilePicker`
<!-- "when": "inFilesPicker && inQuickOpen" -->

TODO:

### `Alt`+`P`

#### togglePreserveCase

コマンドID: `togglePreserveCase`
<!-- "when": "editorFocus" -->

TODO:

#### keybindings.editor.toggleSortByPrecedence

コマンドID: `keybindings.editor.toggleSortByPrecedence`
<!-- "when": "inKeybindings" -->

キーボードショートカットビューにフォーカスしているとき、優先順位で並び替えの有効 / 無効を切り替えます。

#### toggleSearchPreserveCase

コマンドID: `toggleSearchPreserveCase`
<!-- "when": "searchViewletFocus" -->

TODO:

### `Ctrl`+`Shift`+`P`

#### すべてのコマンドの表示

コマンドID: `workbench.action.showCommands`

コマンドパレットを表示します。
[`F1`](#f1-1) と同様です。

#### workbench.action.quickOpenNavigatePreviousInFilePicker

コマンドID: `workbench.action.quickOpenNavigatePreviousInFilePicker`
<!-- "when": "inFilesPicker && inQuickOpen" -->

TODO:

### `Ctrl`+`K` `P`

#### workbench.action.files.copyPathOfActiveFile

コマンドID: `workbench.action.files.copyPathOfActiveFile`

エディタエリアで開いているファイルの絶対パスをクリップボードにコピーします。

### `Ctrl`+`K` `Ctrl`+`P`

#### 表示: すべてのエディターを外観別に表示

コマンドID: `workbench.action.showAllEditors`

ウィンドウ内のエディタエリアで開いている全てのファイルをリストアップした、ファイルを開くプロンプトを表示します。

## Q

TODO:

### `Ctrl`+`Q`

#### workbench.action.quickOpenView

コマンドID: `workbench.action.quickOpenView`

クイックオープンビューを表示します。
`Ctrl`+`Q` を連続でタイプするか、`Ctrl` をタイプしたまま上下キーをタイプして、表示するビューを選択します。
`Ctrl`+`Q` の連続タイプで [workbench.action.quickOpenNavigateNextInViewPicker](#workbenchactionquickopennavigatenextinfilepicker) に状態が遷移します。

#### workbench.action.quickOpenNavigateNextInViewPicker

コマンドID: `workbench.action.quickOpenNavigateNextInViewPicker`
<!-- "when": "inQuickOpen && inViewsPicker" -->

クイックオープンビューを表示しているとき、表示するビューの次の選択肢にフォーカスします。

### `Ctrl`+`Shift`+`Q`

#### workbench.action.quickOpenNavigatePreviousInViewPicker

コマンドID: `workbench.action.quickOpenNavigatePreviousInViewPicker`
<!-- "when": "inQuickOpen && inViewsPicker" -->

クイックオープンビューを表示しているとき、表示するビューの前の選択肢にフォーカスします。
[workbench.action.quickOpenNavigateNextInViewPicker](#workbenchactionquickopennavigatenextinfilepicker) の逆です。

### `Ctrl`+`K` `Ctrl`+`Q`

#### 最後の編集位置へ移動

コマンドID: `workbench.action.navigateToLastEditLocation`

ウィンドウ内のエディタエリアのエディタで、最後に編集(文字列の削除や移動)を行った位置へカーソルを移動します。

## R

TODO:

### `Ctrl`+`R`

#### ファイル: 最近開いた項目

コマンドID: `workbench.action.openRecent`

クイックオープンビューで、最近開いたフォルダのリストを表示します。
TODO: `最近開いたフォルダのリストの正式名称`

#### workbench.action.quickOpenNavigateNextInRecentFilesPicker

コマンドID: `workbench.action.quickOpenNavigateNextInRecentFilesPicker`
<!-- "when": "inQuickOpen && inRecentFilesPicker" -->

TODO:

#### 開発者: ウィンドウの再読み込み

コマンドID: `workbench.action.reloadWindow`
<!-- "when": "isDevelopment" -->

TODO:

### `Alt`+`R`

#### toggleFindRegex

コマンドID: `toggleFindRegex`
<!-- "when": "editorFocus" -->

TODO:

#### 検索エディター: 正規表現の使用を切り替える

コマンドID: `toggleSearchEditorRegex`
<!-- "when": "inSearchEditor && searchInputBoxFocus" -->

検索ビューの入力フォームにフォーカスしているとき、入力文字列の正規表現の使用を切り替えます。

#### toggleSearchRegex

コマンドID: `toggleSearchRegex`
<!-- "when": "searchViewletFocus" -->

検索ビューにフォーカスしているとき、正規表現の使用を切り替えます。

#### ターミナル: 正規表現を使用した検索に切り替える

コマンドID: `workbench.action.terminal.toggleFindRegex`
<!-- "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported" -->

パネルエリアのターミナルタブにフォーカスしているとき、検索フォームを表示して正規表現の使用を切り替えます。

### `Ctrl`+`Alt`+`R`

#### リファクター

コマンドID: `editor.action.refactor`
<!-- "when": "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly" -->

TODO:

#### 検索エディター: もう一度検索する

コマンドID: `rerunSearchEditorSearch`
<!-- "when": "inSearchEditor" -->

TODO:

#### workbench.action.quickOpenNavigatePreviousInRecentFilesPicker

コマンドID: `workbench.action.quickOpenNavigatePreviousInRecentFilesPicker`
<!-- "when": "inQuickOpen && inRecentFilesPicker" -->

TODO:

### `Shift`+`Alt`+`R`

#### ファイル: エクスプローラーで表示する

コマンドID: `revealFileInOS`
<!-- "when": "!editorFocus" -->

TODO:

### `Ctrl`+`K` `R`

#### workbench.action.files.revealActiveFileInWindows

コマンドID: `workbench.action.files.revealActiveFileInWindows`

TODO:

### `Ctrl`+`K` `Ctrl`+`R`

#### ヘルプ: キーボード ショートカットの参照

コマンドID: `workbench.action.keybindingsReference`

キーボードショートカットのチートシートの Web ページをブラウザで表示します。
https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf

#### Git: 選択範囲を元に戻す

コマンドID: `git.revertSelectedRanges`
<!-- "when": "isInDiffEditor" -->

エディタエリアの差分ビューで、差分を元に戻します。
(※文字列や行を選択しても全ての差分が元に戻るので、コマンドタイトルが間違ってる？)

### `Ctrl`+`;` `Ctrl`+`R`

#### テスト: テストの更新

コマンドID: `testing.refreshTests`
<!-- "when": "testing.canRefresh" -->

TODO:

## S

ファイルの保存、その他

### `Ctrl`+`S`

#### ファイル: 保存

コマンドID: `workbench.action.files.save`

エディタエリアで開いているファイルの編集内容を保存します。

### `Ctrl`+`Shift`+`S`

#### ファイル: 名前を付けて保存

コマンドID: `workbench.action.files.saveAs`

エディタエリアで開いているファイルの編集内容を、名前を付けて保存します。

### `Ctrl`+`Shift`+`S`

#### workbench.action.files.saveLocalFile

コマンドID: `workbench.action.files.saveLocalFile`
<!-- "when": "remoteFileDialogVisible" -->

TODO:

### `Ctrl`+`K` `S`

#### saveAll

コマンドID: `saveAll`

エディタエリアで開いている全てのファイルの編集内容を保存します。

### `Ctrl`+`K` `Ctrl`+`S`

#### 基本設定: キーボード ショートカットを開く

コマンドID: `workbench.action.openGlobalKeybindings`

キーボードショートカットビューを開きます。

### `Ctrl`+`K` `Ctrl`+`Shift`+`S`

#### ファイル: フォーマットしないで保存

コマンドID: `workbench.action.files.saveWithoutFormatting`

エディタエリアで開いているファイルの編集内容を、フォーマットしないで保存します。

### `Ctrl`+`K` `Ctrl`+`Alt`+`S`

#### Git: 選択した範囲をステージする

コマンドID: `git.stageSelectedRanges`
<!-- "when": "isInDiffEditor" -->

エディタエリアの差分ビューで、選択した範囲をステージにします。
TODO: ステージしますの表現が違和感

## T

TODO:

### `Ctrl`+`T`

#### ワークスペース内のシンボルへ移動

コマンドID: `workbench.action.showAllSymbols`

プロンプトを表示して、`#` が入力された状態になります。
TODO: @と#の違いを理解する

### `Ctrl`+`Shift`+`T`

#### 表示: 閉じたエディターを再度開く

コマンドID: `workbench.action.reopenClosedEditor`

エディタエリアで閉じたファイルを、別のタブで再度開きます。
`Ctrl`+`Shift`+`T` を連続でタイプすると、最近から遡って閉じたファイルを開きます。

### `Ctrl`+`K` `T`

#### ノートブック: セルの出力を折りたたむ

コマンドID: `notebook.cell.collapseCellOutput`
<!-- "when": "notebookCellHasOutputs && notebookCellListFocused && !inputFocus && !notebookCellOutputIsCollapsed" -->

TODO:

#### ノートブック: セルの出力を展開する

コマンドID: `notebook.cell.expandCellOutput`
<!-- "when": "notebookCellListFocused && notebookCellOutputIsCollapsed" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`T`

#### 基本設定: 配色テーマ

コマンドID: `workbench.action.selectTheme`

配色テーマを選択するプロンプトが表示されます。

## U

TODO:

### `Ctrl`+`U`

#### カーソルを元に戻す

コマンドID: `cursorUndo`
<!-- "when": "textInputFocus" -->

エディタエリアのカーソル位置を、前にカーソルが当たっていた位置に戻します。
`Ctrl`+`U` を連続でタイプすると、遡ってカーソル位置を戻します。

### `Ctrl`+`Shift`+`U`

#### 表示: 出力 の切り替え

コマンドID: `workbench.action.output.toggleOutput`
<!-- "when": "workbench.panel.output.active" -->

パネルエリアの出力タブにフォーカスしてパネルエリアを開きます。

### `Ctrl`+`K` `U`

#### 表示: グループ内の保存済みエディターを閉じる

コマンドID: `workbench.action.closeUnmodifiedEditors`

エディタエリアのエディタグループ内で、編集内容が保存されている他のタブを閉じます。
今開いているタブは残ります。
エディタエリア以外にフォーカスしているときは、直近で編集しているエディタグループ以外のエディタグループを閉じます。

### `Ctrl`+`K` `Ctrl`+`U`

#### 行コメントの削除

コマンドID: `editor.action.removeCommentLine`
<!-- "when": "editorTextFocus && !editorReadonly" -->

エディタエリアのカーソルがある１行を行コメントにします。
すでに行コメントになっている行にカーソルがあるときは、行コメントを外します。

## V

TODO:

### `Ctrl`+`V`

#### 貼り付け

コマンドID: `editor.action.clipboardPasteAction`

クリップボードに保存している内容を貼り付けます。

#### ターミナル: アクティブな端末に貼り付け

コマンドID: `workbench.action.terminal.paste`
<!-- "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported" -->

パネルエリアのターミナルタブにフォーカスしているとき、クリップボードに保存している内容をターミナルのカーソル位置に貼り付けます。

#### workbench.action.terminal.sendSequence

コマンドID: `workbench.action.terminal.sendSequence`
<!-- "when": "terminalFocus && !accessibilityModeEnabled && terminalShellType == 'pwsh'" -->

TODO:

#### filesExplorer.paste

コマンドID: `filesExplorer.paste`
<!-- "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceReadonly && !inputFocus" -->

エクスプローラがフォーカスされているとき、クリップボードの内容がファイルなら、ファイルを複製します。

### `Ctrl`+`Shift`+`V`

#### ノートブック: セルを上に貼り付け

コマンドID: `notebook.cell.pasteAbove`
<!-- "when": "notebookEditorFocused && !inputFocus" -->

TODO:

#### ターミナル: アクティブな端末に貼り付け

コマンドID: `workbench.action.terminal.paste`
<!-- "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported" -->

パネルエリアのターミナルタブにフォーカスしているとき、クリップボードに保存している内容をターミナルのカーソル位置に貼り付けます。

#### Markdown: プレビューを開く

コマンドID: `markdown.showPreview`
<!-- "when": "!notebookEditorFocused && editorLangId == 'markdown'" -->

TODO:

### `Ctrl`+`K` `V`

#### Markdown: プレビューを横に表示

コマンドID: `markdown.showPreviewToSide`
<!-- "when": "!notebookEditorFocused && editorLangId == 'markdown'" -->

TODO:

## W

エディタを閉じる、検索フォームの「単語単位で検索する」の on / off を切り替える。

### `Ctrl`+`W`

#### 表示: エディターを閉じる

コマンドID: `workbench.action.closeActiveEditor`

エディタエリアでフォーカスしているタブのみを閉じます。

#### workbench.action.closeGroup

コマンドID: `workbench.action.closeGroup`
<!-- "when": "activeEditorGroupEmpty && multipleEditorGroups" -->

TODO:

#### ターミナル: エディター領域でアクティブなターミナルを強制終了

コマンドID: `workbench.action.terminal.killEditor`
<!-- "when": "terminalEditorFocus && terminalFocus && terminalHasBeenCreated && resourceScheme == 'vscode-terminal' || terminalEditorFocus && terminalFocus && terminalProcessSupported && resourceScheme == 'vscode-terminal'" -->

TODO:

### `Alt`+`W`

#### toggleFindWholeWord

コマンドID: `toggleFindWholeWord`
<!-- "when": "editorFocus" -->

エディタエリアにフォーカスしているとき、検索フォームの「単語単位で検索する」の on / off を切り替えます。

#### 検索エディター: 単語単位での検索を切り替える

コマンドID: `toggleSearchEditorWholeWord`
<!-- "when": "inSearchEditor && searchInputBoxFocus" -->

検索ビューの検索フォームにフォーカスしているとき、検索フォームの「単語単位で検索する」の on / off を切り替えます。

#### toggleSearchWholeWord

コマンドID: `toggleSearchWholeWord`
<!-- "when": "searchViewletFocus" -->

検索ビューの検索結果にフォーカスしているとき、検索フォームの「単語単位で検索する」の on / off を切り替えます。

#### ターミナル: 単語単位での検索に切り替える

コマンドID: `workbench.action.terminal.toggleFindWholeWord`
<!-- "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported" -->

パネルエリアのターミナルにフォーカスしているとき、検索フォームの「単語単位で検索する」の on / off を切り替えます。

### `Ctrl`+`Shift`+`W`

#### ウィンドウを閉じる

コマンドID: `workbench.action.closeWindow`

VSCode のウィンドウを閉じます。

### `Ctrl`+`K` `W`

#### 表示: グループ内のすべてのエディターを閉じる

コマンドID: `workbench.action.closeEditorsInGroup`

エディタエリアでフォーカスしているエディタグループ内のタブを全て閉じます。

### `Ctrl`+`K` `Ctrl`+`W`

#### 表示: すべてのエディターを閉じる

コマンドID: `workbench.action.closeAllEditors`

エディタエリアのタブを (フォーカス外のエディタグループも含めて) 全て閉じます。

### `Ctrl`+`K` `Ctrl`+`Shift`+`W`

#### 表示: すべてのエディター グループを閉じる

コマンドID: `workbench.action.closeAllGroups`

エディタエリアのタブを (フォーカス外のエディタグループも含めて) 全て閉じます。
TODO: `Ctrl`+`K` `Ctrl`+`W` との違いを調べる

## X

TODO:

### `Ctrl`+`X`

#### 切り取り

コマンドID: `editor.action.clipboardCutAction`

エディタエリアで選択した文字列を切り取ります。

#### filesExplorer.cut

コマンドID: `filesExplorer.cut`
<!-- "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus" -->

アクティビティバーの「エクスプローラー」が選択されていて(エクスプローラービュー)、フォルダツリー内のファイルを切り取ります。

### `Ctrl`+`Shift`+`X`

#### 表示: 拡張機能 を表示

コマンドID: `workbench.view.extensions`
<!-- "when": "viewContainer.workbench.view.extensions.enabled" -->

アクティビティバーの「Extensions (拡張機能)」を開きます。

### `Ctrl`+`K` `Ctrl`+`X`

#### 末尾の空白のトリミング

コマンドID: `editor.action.trimTrailingWhitespace`
<!-- "when": "editorTextFocus && !editorReadonly" -->

エディタエリアでカーソルがある行の末尾の空白文字を除去します。

### `Ctrl`+`;` `Ctrl`+`X`

#### testing.cancelRun

コマンドID: `testing.cancelRun`

TODO:

## Y

TODO:

### `Y`

#### ノートブック: セルをコードに変更する

コマンドID: `notebook.cell.changeToCode`
<!-- "when": "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook' && notebookCellType == 'markup'" -->

TODO:

### `Ctrl`+`Y`

#### やり直し

コマンドID: `redo`

`Ctrl`+`Z` で元に戻した変更を、やり直し (元に戻すのを辞め) ます。
`Ctrl`+`Shift`+`Z` と同様です。

### `Ctrl`+`Shift`+`Y`

#### 表示: デバッグ コンソール の切り替え

コマンドID: `workbench.debug.action.toggleRepl`
<!-- "when": "workbench.panel.repl.view.active" -->

パネルエリアの「デバッグコンソール」を表示 / 非表示を切り替えます。

## Z

TODO:

### `Ctrl`+`Z`

#### 元に戻す

コマンドID: `undo`

変更を１つ (のアクションを) 元に戻します。

### `Alt`+`Z`

#### 表示: [右端で折り返す] の設定/解除

コマンドID: `editor.action.toggleWordWrap`

エディタエリアの表示上の改行の設定の on / off を切り替えます。
１行の文字数がエディタエリアの右端を超える行は、行番号をキープしたまま、エディタエリアの右端で折り返して表示します。

#### ターミナル: コンテンツの幅にサイズを切り替える

コマンドID: `workbench.action.terminal.sizeToContentWidth`
<!-- "when": "terminalFocus && terminalHasBeenCreated && terminalIsOpen || terminalFocus && terminalIsOpen && terminalProcessSupported" -->

TODO:

### `Ctrl`+`Shift`+`Z`

#### やり直し

コマンドID: `redo`

`Ctrl`+`Z` で元に戻した変更を、やり直し (元に戻すのを辞め) ます。
`Ctrl`+`Y` と同様です。

### `Ctrl`+`K` `Z`

#### 表示: Zen Mode の切り替え

コマンドID: `workbench.action.toggleZenMode`

ウィンドウの表示設定の「Zen モード」の on / off を切り替えます。

## 0

TODO:

### `Ctrl`+`0`

#### 表示: プライマリ サイド バーにフォーカスする

コマンドID: `workbench.action.focusSideBar`

サイドバーにフォーカスします。
MEMO: 使えそう

### `Alt`+`0`

#### 表示: グループ内の最後のエディターを開く

コマンドID: `workbench.action.lastEditorInGroup`

エディタエリアの最後にフォーカスしたエディタグループの、一番後ろのタブを表示します。

### `Shift`+`Alt`+`0`

#### エディター レイアウトの垂直/水平を切り替える

コマンドID: `workbench.action.toggleEditorGroupLayout`

エディタエリアで複数のエディタグループに分割しているとき、エディタの表示レイアウトの垂直 / 水平を切り替えます。

### `Ctrl`+`K` `Ctrl`+`0`

#### すべて折りたたみ

コマンドID: `editor.foldAll`
<!-- "when": "editorTextFocus && foldingEnabled" -->

エディタエリアでフォーカスしているファイルの、可能な折りたたみを全て折りたたみます。

## 1

TODO:

### `Ctrl`+`1`

#### 表示: 最初のエディター グループにフォーカス

コマンドID: `workbench.action.focusFirstEditorGroup`

エディタエリアの最初のエディタグループにフォーカスします。
MEMO: 使う

### `Alt`+`1`

#### workbench.action.openEditorAtIndex1

コマンドID: `workbench.action.openEditorAtIndex1`

エディタエリアでフォーカスしているエディタグループの、最初のタブを表示します。
MEMO: 使う

### `Ctrl`+`Shift`+`1`

#### editor.action.replaceOne

コマンドID: `editor.action.replaceOne`
<!-- "when": "editorFocus && findWidgetVisible" -->

TODO:

#### search.action.replace

コマンドID: `search.action.replace`
<!-- "when": "matchFocus && replaceActive && searchViewletVisible" -->

TODO:

#### search.action.replaceAllInFile

コマンドID: `search.action.replaceAllInFile`
<!-- "when": "fileMatchFocus && replaceActive && searchViewletVisible" -->

TODO:

#### search.action.replaceAllInFolder

コマンドID: `search.action.replaceAllInFolder`
<!-- "when": "folderMatchFocus && replaceActive && searchViewletVisible" -->

TODO:

### `Shift`+`Alt`+`1`

#### 表示: エディターを 1 番目のグループに移動

コマンドID: `workbench.action.moveEditorToFirstGroup`

エディタエリアで複数のエディタグループに分割しているとき、２番目以降のエディタグループで開いているタブを、１番目のエディタグループに移動します。
MEMO: 使えそう

### `Ctrl`+`K` `Ctrl`+`1`

#### レベル 1 で折りたたむ

コマンドID: `editor.foldLevel1`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## 2

TODO:

### `Ctrl`+`2`

#### workbench.action.focusSecondEditorGroup

コマンドID: `workbench.action.focusSecondEditorGroup`

エディタエリアの２番目のエディタグループにフォーカスします。
２番目のエディタグループが存在しないときは、エディタグループを追加します。
MEMO: 使う

### `Alt`+`2`

#### workbench.action.openEditorAtIndex2

コマンドID: `workbench.action.openEditorAtIndex2`

エディタエリアでフォーカスしているエディタグループの、２番目のタブを表示します。
MEMO: 使う

### `Ctrl`+`Shift`+`2`

#### workbench.action.terminal.sendSequence

コマンドID: `workbench.action.terminal.sendSequence`
<!-- "when": "terminalFocus" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`2`

#### レベル 2 で折りたたむ

コマンドID: `editor.foldLevel2`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## 3

TODO:

### `Ctrl`+`3`

#### workbench.action.focusThirdEditorGroup

コマンドID: `workbench.action.focusThirdEditorGroup`

エディタエリアの３番目のエディタグループにフォーカスします。
エディタグループが２つ表示されていて３番目のエディタグループが存在しないときは、エディタグループを追加します。
MEMO: 使う

### `Alt`+`3`

#### workbench.action.openEditorAtIndex3

コマンドID: `workbench.action.openEditorAtIndex3`

エディタエリアでフォーカスしているエディタグループの、３番目のタブを表示します。
MEMO: 使う

### `Ctrl`+`K` `Ctrl`+`3`

#### レベル 3 で折りたたむ

コマンドID: `editor.foldLevel3`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## 4

TODO:

### `Ctrl`+`4`

#### workbench.action.focusFourthEditorGroup

コマンドID: `workbench.action.focusFourthEditorGroup`

エディタエリアの４番目のエディタグループにフォーカスします。
エディタグループが３つ表示されていて４番目のエディタグループが存在しないときは、エディタグループを追加します。
MEMO: 使う

### `Alt`+`4`

#### workbench.action.openEditorAtIndex4

コマンドID: `workbench.action.openEditorAtIndex4`

エディタエリアでフォーカスしているエディタグループの、４番目のタブを表示します。
MEMO: 使う

### `Ctrl`+`K` `Ctrl`+`4`

#### レベル 4 で折りたたむ

コマンドID: `editor.foldLevel4`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## 5

TODO:

### `Ctrl`+`5`

#### workbench.action.focusFifthEditorGroup

コマンドID: `workbench.action.focusFifthEditorGroup`

エディタエリアの５番目のエディタグループにフォーカスします。
エディタグループが４つ表示されていて５番目のエディタグループが存在しないときは、エディタグループを追加します。

### `Alt`+`4`

#### workbench.action.openEditorAtIndex5

コマンドID: `workbench.action.openEditorAtIndex5`

エディタエリアでフォーカスしているエディタグループの、５番目のタブを表示します。
MEMO: 使う

### `Ctrl`+`Shift`+`5`

#### ターミナル: ターミナルの分割

コマンドID: `workbench.action.terminal.split`
<!-- "when": "terminalFocus && terminalProcessSupported || terminalFocus && terminalWebExtensionContributedProfile" -->

パネルエリアのターミナルにフォーカスしているとき、ターミナルを分割します。

#### workbench.action.terminal.splitInstance

コマンドID: `workbench.action.terminal.splitInstance`
<!-- "when": "terminalProcessSupported && terminalTabsFocus" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`5`

#### レベル 5 で折りたたむ

コマンドID: `editor.foldLevel5`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## 6

TODO:

### `Ctrl`+`6`

#### workbench.action.focusSixthEditorGroup

コマンドID: `workbench.action.focusSixthEditorGroup`

エディタエリアの６番目のエディタグループにフォーカスします。
エディタグループが５つ表示されていて６番目のエディタグループが存在しないときは、エディタグループを追加します。

### `Alt`+`6`

#### workbench.action.openEditorAtIndex6

コマンドID: `workbench.action.openEditorAtIndex6`

エディタエリアでフォーカスしているエディタグループの、６番目のタブを表示します。
MEMO: 使う

### `Ctrl`+`Shift`+`6`

#### workbench.action.terminal.sendSequence

コマンドID: `workbench.action.terminal.sendSequence`
<!-- "when": "terminalFocus" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`6`

#### レベル 6 で折りたたむ

コマンドID: `editor.foldLevel6`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## 7

TODO:

### `Ctrl`+`7`

#### workbench.action.focusSeventhEditorGroup

コマンドID: `workbench.action.focusSeventhEditorGroup`

エディタエリアの７番目のエディタグループにフォーカスします。
エディタグループが６つ表示されていて７番目のエディタグループが存在しないときは、エディタグループを追加します。

### `Alt`+`7`

#### workbench.action.openEditorAtIndex7

コマンドID: `workbench.action.openEditorAtIndex7`

エディタエリアでフォーカスしているエディタグループの、７番目のタブを表示します。
MEMO: 使う

### `Ctrl`+`K` `Ctrl`+`7`

#### レベル 7 で折りたたむ

コマンドID: `editor.foldLevel7`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## 8

TODO:

### `Ctrl`+`8`

#### workbench.action.focusEighthEditorGroup

コマンドID: `workbench.action.focusEighthEditorGroup`

エディタエリアの８番目のエディタグループにフォーカスします。
エディタグループが７つ表示されていて８番目のエディタグループが存在しないときは、エディタグループを追加します。

### `Alt`+`8`

#### workbench.action.openEditorAtIndex8

コマンドID: `workbench.action.openEditorAtIndex8`

エディタエリアでフォーカスしているエディタグループの、８番目のタブを表示します。
MEMO: 使う

### `Ctrl`+`K` `Ctrl`+`8`

#### すべての領域を折りたたむ

コマンドID: `editor.foldAllMarkerRegions`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## 9

TODO:

### `Ctrl`+`9`

#### 表示: グループ内の最後のエディターを開く

コマンドID: `workbench.action.lastEditorInGroup`

エディタエリアでフォーカスしているエディタグループの、最後のタブを表示します。
MEMO: 使う

### `Alt`+`9`

#### workbench.action.openEditorAtIndex9

コマンドID: `workbench.action.openEditorAtIndex9`

エディタエリアでフォーカスしているエディタグループの、９番目のタブを表示します。
MEMO: 使う

### `Shift`+`Alt`+`9`

#### 表示: エディターを最後のグループに移動

コマンドID: `workbench.action.moveEditorToLastGroup`

エディタエリアで複数のエディタグループに分割しているとき、最後以外のエディタグループで開いているタブを、最後のエディタグループに移動します。

### `Ctrl`+`K` `Ctrl`+`9`

#### すべての領域を展開

コマンドID: `editor.unfoldAllMarkerRegions`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## !

キーボードショートカットなし

## "

キーボードショートカットなし

## #

キーボードショートカットなし

## $

キーボードショートカットなし

## %

キーボードショートカットなし

## &

キーボードショートカットなし

## '

キーボードショートカットなし

## (

キーボードショートカットなし

## )

キーボードショートカットなし

## *

キーボードショートカットなし

## +

キーボードショートカットなし

## ,

設定ビューを開く、その他いろいろ

### `Ctrl`+`,`

#### workbench.action.openSettings

コマンドID: `workbench.action.openSettings`

設定ビューを開きます。

### `Ctrl`+`Shift`+`,`

#### 前の値に置換

コマンドID: `editor.action.inPlaceReplace.up`
<!-- "when": "editorTextFocus && !editorReadonly" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`,`

#### 選択範囲から手動折りたたみ範囲を作成する

コマンドID: `editor.createFoldingRangeFromSelection`
<!-- "when": "editorTextFocus && foldingEnabled" -->

選択した複数行で折りたたみできるようにします。
`Ctrl`+`K` `Ctrl`+`.` で解除します。

## -

フォントサイズを小さくする、その他いろいろ

### `Ctrl`+`-`

#### 表示: 縮小

コマンドID: `workbench.action.zoomOut`

ウィンドウのフォントサイズを１サイズ小さくします。
他の VSCode のウィンドウにも影響します。
`Ctrl`+`=` でサイズを大きくします。
MEMO: めっちゃ使う

### `Alt`+`-`

#### 検索エディター: コンテキスト行を減らす

コマンドID: `decreaseSearchEditorContextLines`
<!-- "when": "inSearchEditor" -->

TODO:

### `Ctrl`+`Shift`+`-`

#### 表示: 縮小

コマンドID: `workbench.action.zoomOut`

ウィンドウのフォントサイズを１サイズ小さくします。
他の VSCode のウィンドウにも影響します。
`Ctrl`+`-` と同様です。

### `Ctrl`+`K` `Ctrl`+`-`

#### 選択されたものを除くすべての領域を折りたたむ

コマンドID: `editor.foldAllExcept`
<!-- "when": "editorTextFocus && foldingEnabled" -->

エディタエリアで選択した範囲以外の全ての折りたたみ可能な領域を全て折りたたみます。
MEMO: これめっちゃ便利

## .

TODO:

### `Ctrl`+`.`

#### クイック フィックス

コマンドID: `editor.action.quickFix`
<!-- "when": "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly" -->

エディタエリアで、カーソル位置のクイックフィックスを開きます。

#### problems.action.showQuickFixes

コマンドID: `problems.action.showQuickFixes`
<!-- "when": "problemFocus" -->

TODO:

### `Ctrl`+`Shift`+`.`

#### 次の値に置換

コマンドID: `editor.action.inPlaceReplace.down`
<!-- "when": "editorTextFocus && !editorReadonly" -->

TODO:

#### breadcrumbs.focusAndSelect

コマンドID: `breadcrumbs.focusAndSelect`
<!-- "when": "breadcrumbsPossible && breadcrumbsVisible" -->

TODO:

#### breadcrumbs.toggleToOn

コマンドID: `breadcrumbs.toggleToOn`
<!-- "when": "!config.breadcrumbs.enabled" -->

TODO:

### `Shift`+`Alt`+`.`

#### 自動修正

コマンドID: `editor.action.autoFix`
<!-- "when": "editorTextFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)quickfix\\b/" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`.`

#### 手動折りたたみ範囲を削除する

コマンドID: `editor.removeManualFoldingRanges`
<!-- "when": "editorTextFocus && foldingEnabled" -->

`Ctrl`+`K` `Ctrl`+`,` で作成した折りたたみ設定を解除します。

## /

TODO:

### `Ctrl`+`/`

#### 行コメントの切り替え

コマンドID: `editor.action.commentLine`
<!-- "when": "editorTextFocus && !editorReadonly" -->

エディタエリアで、カーソル位置の行のコメントの on / off を切り替えます。

#### toggleExplainMode

コマンドID: `toggleExplainMode`
<!-- "when": "suggestWidgetVisible" -->

TODO:

#### workbench.action.terminal.sendSequence

コマンドID: `workbench.action.terminal.sendSequence`
<!-- "when": "terminalFocus" -->

TODO:

### `Ctrl`+`K` `Ctrl`+`/`

#### すべてのブロック コメントの折りたたみ

コマンドID: `editor.foldAllBlockComments`
<!-- "when": "editorTextFocus && foldingEnabled" -->

エディタエリアでフォーカスしているファイルの、全てのブロックコメントを折りたたみます。

## :

キーボードショートカットなし

## ;

`Ctrl`+`;` は、テスト関連の修飾キーに使われているため、それ以外のショートカットキーをリストアップします。

### `Ctrl`+`Shift`+`;`

#### breadcrumbs.focus

コマンドID: `breadcrumbs.focus`
<!-- "when": "breadcrumbsPossible" -->

エディタエリアのパンくずリストの、現在の要素のアイテムにフォーカスします。

## <

キーボードショートカットなし

## =

TODO:

### `Ctrl`+`=`

#### 表示: 拡大

コマンドID: `workbench.action.zoomIn`

ウィンドウのフォントサイズを１サイズ大きくします。
他の VSCode のウィンドウにも影響します。
`Ctrl`+`-` でサイズを小さくします。
MEMO: めっちゃ使う

### `Alt`+`=`

#### 検索エディター: コンテキスト行を増やす

コマンドID: `increaseSearchEditorContextLines`
<!-- "when": "inSearchEditor" -->

TODO:

### `Ctrl`+`Shift`+`=`

#### 表示: 拡大

コマンドID: `workbench.action.zoomIn`

ウィンドウのフォントサイズを１サイズ大きくします。
`Ctrl`+`=` と同様です。

### `Ctrl`+`K` `Ctrl`+`=`

#### 選択されたものを除くすべての領域を展開する

コマンドID: `editor.unfoldAllExcept`
<!-- "when": "editorTextFocus && foldingEnabled" -->

TODO:

## >

キーボードショートカットなし

## ?

キーボードショートカットなし

## @

キーボードショートカットなし

## [

TODO:

### `Ctrl`+`[`

#### 行のインデント解除

コマンドID: `editor.action.outdentLines`
<!-- "when": "editorTextFocus && !editorReadonly" -->

エディタエリアのカーソル位置の行のインデントを、左に１つずらします。
複数行を選択しているときは、選択している行のインデントを、左に１つずらします。
MEMO: 使えそう

### `Alt`+`[`

#### 前のインライン候補を表示する

コマンドID: `editor.action.inlineSuggest.showPrevious`
<!-- "when": "inlineSuggestionVisible && !editorReadonly" -->

TODO:

### `Ctrl`+`Shift`+`[`

#### ノートブック: セルを折りたたむ

コマンドID: `notebook.fold`
<!-- "when": "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook'" -->

TODO:

#### 折りたたみ

コマンドID: `editor.fold`
<!-- "when": "editorTextFocus && foldingEnabled" -->

エディタエリアでカーソルがある行を折りたたみます。

### `Ctrl`+`K` `Ctrl`+`[`

#### 再帰的に折りたたむ

コマンドID: `editor.foldRecursively`
<!-- "when": "editorTextFocus && foldingEnabled" -->

エディタエリアでカーソルがある行を再帰的に折りたたみます。
`Ctrl`+`K` `Ctrl`+`]` で折りたたみを再帰的に展開します。

## \

TODO:

### `Ctrl`+`\`

#### 表示: エディターの分割

コマンドID: `workbench.action.splitEditor`

エディタエリアの最後にフォーカスしたエディタグループで開いているタブと同じファイルを、新しいエディタグループを横に分割して表示します。
`Ctrl`+`K` `Ctrl`+`\` で縦に分割します。
MEMO: 使えそう

### `Ctrl`+`Shift`+`\`

#### ターミナル: ターミナル タブ ビューにフォーカス

コマンドID: `workbench.action.terminal.focusTabs`
<!-- "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported || terminalHasBeenCreated && terminalTabsFocus || terminalProcessSupported && terminalTabsFocus" -->

TODO:

#### ブラケットへ移動

コマンドID: `editor.action.jumpToBracket`
<!-- "when": "editorTextFocus" -->

エディタエリアのカーソル位置から一番近くにあるブラケット (`{` `}`) に移動します。
カーソル位置がブラケットにあるときは、対応するブラケットに移動します。

### `Ctrl`+`K` `Ctrl`+`\`

#### 表示: 垂直にエディターを分割

コマンドID: `workbench.action.splitEditorOrthogonal`

エディタエリアの最後にフォーカスしたエディタグループで開いているタブと同じファイルを、新しいエディタグループを縦に分割して表示します。
`Ctrl`+`\` で横に分割します。
MEMO: 使えそう

### `Ctrl`+`K` `Ctrl`+`Shift`+`\`

#### ノートブック: セルを分割する

コマンドID: `notebook.cell.split`
<!-- "when": "notebookCellEditable && notebookEditable && notebookEditorFocused" -->

TODO:

#### 表示: グループ内のエディターの分割

コマンドID: `workbench.action.splitEditorInGroup`
<!-- "when": "activeEditorCanSplitInGroup" -->

エディタエリアの最後にフォーカスしたエディタグループで開いているタブと同じファイルを、同じエディタグループを横に分割して表示します。
再度 `Ctrl`+`K` `Ctrl`+`Shift`+`\` をタイプすると、分割した表示を１つに統合します。(表示: グループ内のエディターに参加する)

#### 表示: グループ内のエディターに参加する

コマンドID: `workbench.action.joinEditorInGroup`
<!-- "when": "sideBySideEditorActive" -->

`Ctrl`+`K` `Ctrl`+`Shift`+`\` で分割した表示を１つに統合します。

## ]

TODO:

### `Ctrl`+`]`

#### 行のインデント

コマンドID: `editor.action.indentLines`
<!-- "when": "editorTextFocus && !editorReadonly" -->

エディタエリアのカーソル位置の行のインデントを、右に１つずらします。
複数行を選択しているときは、選択している行のインデントを、右に１つずらします。
MEMO: 使えそう

### `Alt`+`]`

#### 次のインライン候補を表示する

コマンドID: `editor.action.inlineSuggest.showNext`
<!-- "when": "inlineSuggestionVisible && !editorReadonly" -->

TODO:

### `Ctrl`+`Shift`+`]`

#### ノートブック: セルを展開する

コマンドID: `notebook.unfold`
<!-- "when": "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook'" -->

TODO:

#### 展開

コマンドID: `editor.unfold`
<!-- "when": "editorTextFocus && foldingEnabled" -->

エディタエリアでカーソルがある行を折りたたみを解除します。

### `Ctrl`+`K` `Ctrl`+`]`

#### 再帰的に展開する

コマンドID: `editor.unfoldRecursively`
<!-- "when": "editorTextFocus && foldingEnabled" -->

エディタエリアでカーソルがある行の折りたたみを再帰的に展開します。
`Ctrl`+`K` `Ctrl`+`[` で再帰的に折りたたみます。

## ^

キーボードショートカットなし

## _

キーボードショートカットなし

## `

TODO:

### `Ctrl`+`` ` ``

#### 表示: ターミナル の切り替え

コマンドID: `workbench.action.terminal.toggleTerminal`
<!-- "when": "terminal.active" -->

パネルエリアのターミナルタブの表示 / 非表示を切り替えます。
(Windows で初期状態では効かないので、ひと手間必要なようです。https://blog.mamemaki.com/entry/2020/10/30/102041)

### `Ctrl`+`Shift`+`` ` ``

#### ターミナル: 新しいターミナルを作成する

コマンドID: `workbench.action.terminal.new`
<!-- "when": "terminalProcessSupported || terminalWebExtensionContributedProfile" -->

パネルエリアのターミナルタブを開き、新しいターミナルを起動します。

## {

キーボードショートカットなし

## |

キーボードショートカットなし

## }

キーボードショートカットなし

## ~

キーボードショートカットなし

## F1

名前の変更

### `F1`

#### すべてのコマンドの表示

コマンドID: `workbench.action.showCommands`

コマンドパレットを表示します。
[`Ctrl`+`Shift`+`P`](#ctrlshiftp) と同様です。

## F2

名前の変更

### `F2`

#### シンボルの名前変更

コマンドID: `editor.action.rename`
<!-- "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly" -->

エディタエリアにフォーカスしているとき、カーソル位置のシンボルを変更します。

#### renameFile

コマンドID: `renameFile`
<!-- "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus" -->

アクティビティバーの「エクスプローラー」が選択されている(エクスプローラービュー)とき、ファイル名 / フォルダ名を変更します。

#### debug.renameWatchExpression

コマンドID: `debug.renameWatchExpression`
<!-- "when": "watchExpressionsFocused" -->

TODO:

#### debug.setVariable

コマンドID: `debug.setVariable`
<!-- "when": "variablesFocused" -->

TODO:

#### remote.tunnel.label

コマンドID: `remote.tunnel.label`
<!-- "when": "tunnelViewFocus && tunnelType == 'Forwarded' && tunnelViewMultiSelection == 'undefined'" -->

TODO:

#### workbench.action.terminal.renameInstance

コマンドID: `workbench.action.terminal.renameInstance`
<!-- "when": "terminalHasBeenCreated && terminalTabsFocus && terminalTabsSingularSelection || terminalProcessSupported && terminalTabsFocus && terminalTabsSingularSelection" -->

TODO:

### `Ctrl`+`F2`

#### すべての出現箇所を変更

コマンドID: `editor.action.changeAll`
<!-- "when": "editorTextFocus && !editorReadonly" -->

エディタエリアにフォーカスしているとき、カーソル位置のシンボルと同じシンボルの箇所を同時に変更します。

### `Ctrl`+`Shift`+`F2`

#### editor.action.linkedEditing

コマンドID: `editor.action.linkedEditing`
<!-- "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly" -->

TODO:

### `Ctrl`+`K` `F2`

#### togglePeekWidgetFocus

コマンドID: `togglePeekWidgetFocus`
<!-- "when": "inReferenceSearchEditor || referenceSearchVisible" -->

TODO:

## F3

検索結果の移動

### `F3`

#### 次を検索

コマンドID: `editor.action.nextMatchFindAction`
<!-- "when": "editorFocus" -->

エディタエリアにフォーカスしているとき、前回検索した文字列で検索します。
連続で `F3` をタイプすると、次の検索結果に移動します。
前回の検索文字列が設定されていないとき、検索フォームが表示されます。

#### list.find

コマンドID: `list.find`
<!-- "when": "listFocus && listSupportsFind" -->

TODO:

#### ターミナル: 次を検索

コマンドID: `workbench.action.terminal.findNext`
<!-- "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported" -->

パネルエリアのターミナルタブにフォーカスしているとき、前回検索した文字列で検索します。
連続で `F3` をタイプすると、次の検索結果に移動します。
前回の検索文字列が設定されていないとき、検索フォームが表示されます。

### `Shift`+`F3`

#### 前を検索

コマンドID: `editor.action.previousMatchFindAction`
<!-- "when": "editorFocus" -->

エディタエリアにフォーカスしているとき、前回検索した文字列で検索します。
連続で `F3` をタイプすると、前の検索結果に移動します。
前回の検索文字列が設定されていないとき、検索フォームが表示されます。

#### ターミナル: 前を検索

コマンドID: `workbench.action.terminal.findPrevious`
<!-- "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported" -->

パネルエリアのターミナルタブにフォーカスしているとき、前回検索した文字列で検索します。
連続で `F3` をタイプすると、前の検索結果に移動します。
前回の検索文字列が設定されていないとき、検索フォームが表示されます。

### `Ctrl`+`F3`

#### 次の選択項目を検索

コマンドID: `editor.action.nextSelectionMatchFindAction`
<!-- "when": "editorFocus" -->

エディタエリアにフォーカスしているとき、カーソル位置の文字列で検索して、次に文字列が現れる箇所に移動します。
文字列が選択状態のときは、選択した文字列で検索します。

### `Alt`+`F3`

#### 次の変更箇所を表示

コマンドID: `editor.action.dirtydiff.next`
<!-- "when": "editorTextFocus && !textCompareEditorActive" -->

TODO:

### `Ctrl`+`Shift`+`F3`

#### 前の選択項目を検索

コマンドID: `editor.action.previousSelectionMatchFindAction`
<!-- "when": "editorFocus" -->

エディタエリアにフォーカスしているとき、カーソル位置の文字列で検索して、前に文字列が現れる箇所に移動します。
文字列が選択状態のときは、選択した文字列で検索します。

### `Shift`+`Alt`+`F3`

#### 前の変更箇所を表示

コマンドID: `editor.action.dirtydiff.previous`
<!-- "when": "editorTextFocus && !textCompareEditorActive" -->

TODO:

## F4

検索結果の移動

### `F4`

#### goToNextReference

コマンドID: `goToNextReference`
<!-- "when": "inReferenceSearchEditor || referenceSearchVisible" -->

TODO:

#### 検索: 次の検索結果にフォーカス

コマンドID: `search.action.focusNextSearchResult`
<!-- "when": "hasSearchResult || inSearchEditor" -->

検索ビューにフォーカスしているとき、次の検索結果の文字列にフォーカスします。

#### 次の参照に移動

コマンドID: `references-view.next`
<!-- "when": "reference-list.hasResult && references-view.canNavigate" -->

TODO:

### `Shift`+`F4`

#### goToPreviousReference

コマンドID: `goToPreviousReference`
<!-- "when": "inReferenceSearchEditor || referenceSearchVisible" -->

TODO:

#### 検索: 前の検索結果にフォーカス

コマンドID: `search.action.focusPreviousSearchResult`
<!-- "when": "hasSearchResult || inSearchEditor" -->

検索ビューにフォーカスしているとき、前の検索結果の文字列にフォーカスします。

#### 前の参照に移動

コマンドID: `references-view.prev`
<!-- "when": "reference-list.hasResult && references-view.canNavigate" -->

TODO:

### `Ctrl`+`F4`

#### 表示: エディターを閉じる

コマンドID: `workbench.action.closeActiveEditor`

エディタエリアの最後にフォーカスしていたタブを閉じます。
`Ctrl`+`W` と同様です。

#### workbench.action.closeGroup

コマンドID: `workbench.action.closeGroup`
<!-- "when": "activeEditorGroupEmpty && multipleEditorGroups" -->

TODO:

#### ターミナル: エディター領域でアクティブなターミナルを強制終了

コマンドID: `workbench.action.terminal.killEditor`
<!-- "when": "terminalEditorFocus && terminalFocus && terminalHasBeenCreated && resourceScheme == 'vscode-terminal' || terminalEditorFocus && terminalFocus && terminalProcessSupported && resourceScheme == 'vscode-terminal'" -->

TODO:

### `Alt`+`F4`

#### ウィンドウを閉じる

コマンドID: `workbench.action.closeWindow`

VSCode のウィンドウを閉じます。
`Ctrl`+`Shift`+`W` と同様です。

## F5

デバッガの起動・停止

### `F5`

#### Debug: デバッグの開始

コマンドID: `workbench.action.debug.start`
<!-- "when": "debuggersAvailable && debugState == 'inactive'" -->

デバッガを起動します。
TODO:

#### Debug: 続行

コマンドID: `workbench.action.debug.continue`
<!-- "when": "debugState == 'stopped'" -->

TODO:

#### debug.openView

コマンドID: `debug.openView`
<!-- "when": "!debuggersAvailable" -->

TODO:

### `Shift`+`F5`

#### Debug: 停止

コマンドID: `workbench.action.debug.stop`
<!-- "when": "inDebugMode && !focusedSessionIsAttach" -->

TODO:

#### Debug: 切断

コマンドID: `workbench.action.debug.disconnect`
<!-- "when": "focusedSessionIsAttach && inDebugMode" -->

TODO:

### `Ctrl`+`F5`

#### Debug: デバッグなしで開始

コマンドID: `workbench.action.debug.run`
<!-- "when": "debuggersAvailable && debugState != 'initializing'" -->

TODO:

#### debug.openView

コマンドID: `debug.openView`
<!-- "when": "!debuggersAvailable" -->

TODO:

### `Alt`+`F5`

#### 次の変更に移動

コマンドID: `workbench.action.editor.nextChange`
<!-- "when": "editorTextFocus && !textCompareEditorActive" -->

TODO:

#### workbench.action.editor.nextChange

コマンドID: `workbench.action.compareEditor.nextChange`
<!-- "when": "textCompareEditorVisible" -->

TODO:

### `Ctrl`+`Shift`+`F5`

#### Debug: 再起動

コマンドID: `workbench.action.debug.restart`
<!-- "when": "inDebugMode" -->

TODO:

### `Shift`+`Alt`+`F5`

#### 前の変更に移動

コマンドID: `workbench.action.editor.previousChange`
<!-- "when": "editorTextFocus && !textCompareEditorActive" -->

TODO:

#### workbench.action.compareEditor.previousChange

コマンドID: `workbench.action.compareEditor.previousChange`
<!-- "when": "textCompareEditorVisible" -->

TODO:

## F6

TODO:

### `F6`

#### 表示: 次の部分にフォーカス

コマンドID: `workbench.action.focusNextPart`

TODO:

#### Debug: 一時停止

コマンドID: `workbench.action.debug.pause`
<!-- "when": "debugState == 'running'" -->

TODO:

### `F6`

#### 表示: 前の部分にフォーカス

コマンドID: `workbench.action.focusPreviousPart`

TODO:

## F7

TODO:

### `F7`

#### 次の差分に移動

コマンドID: `editor.action.diffReview.next`
<!-- "when": "isInDiffEditor" -->

TODO:

#### 次のシンボル ハイライトに移動

コマンドID: `editor.action.wordHighlight.next`
<!-- "when": "editorTextFocus && hasWordHighlights" -->

TODO:

### `Shift`+`F7`

#### 前の差分に移動

コマンドID: `editor.action.diffReview.prev`
<!-- "when": "isInDiffEditor" -->

TODO:

#### 前のシンボル ハイライトに移動

コマンドID: `editor.action.wordHighlight.prev`
<!-- "when": "editorTextFocus && hasWordHighlights" -->

TODO:

## F8

TODO:

### `F8`

#### ファイル内の次の問題 (エラー、警告、情報) へ移動

コマンドID: `editor.action.marker.nextInFiles`
<!-- "when": "editorFocus" -->

エディタエリアにフォーカスしているとき、問題 (エラー、警告、情報) のあるエディタグループのタブの該当の箇所へ移動します。
複数の問題があるとき、連続で `F8` をタイプすると次の問題の箇所へ移動します。

### `Shift`+`F8`

#### ファイル内の前の問題 (エラー、警告、情報) へ移動

コマンドID: `editor.action.marker.prevInFiles`
<!-- "when": "editorFocus" -->

エディタエリアにフォーカスしているとき、問題 (エラー、警告、情報) のあるエディタグループのタブの該当の箇所へ移動します。
複数の問題があるとき、連続で `Shift`+`F8` をタイプすると前の問題の箇所へ移動します。

### `Alt`+`F8`

#### 次の問題 (エラー、警告、情報) へ移動

コマンドID: `editor.action.marker.next`
<!-- "when": "editorFocus" -->

エディタエリアにフォーカスしているタブ内に問題 (エラー、警告、情報) のあるとき、該当の箇所へ移動します。
複数の問題があるとき、連続で `Alt`+`F8` をタイプすると次の問題の箇所へ移動します。

#### テスト: 次のテスト エラーに移動

コマンドID: `testing.goToNextMessage`
<!-- "when": "editorFocus && testing.isPeekVisible" -->

TODO:

### `Shift`+`Alt`+`F8`

#### 前の問題 (エラー、警告、情報) へ移動

コマンドID: `editor.action.marker.prev`
<!-- "when": "editorFocus" -->

エディタエリアにフォーカスしているタブ内に問題 (エラー、警告、情報) のあるとき、該当の箇所へ移動します。
複数の問題があるとき、連続で `Shift`+`Alt`+`F8` をタイプすると前の問題の箇所へ移動します。

#### テスト: 前のテスト エラーに移動

コマンドID: `testing.goToPreviousMessage`
<!-- "when": "editorFocus && testing.isPeekVisible" -->

TODO:

## F9

TODO:

### `F9`

#### デバッグ: ブレークポイントの切り替え

コマンドID: `editor.debug.action.toggleBreakpoint`
<!-- "when": "debuggersAvailable && editorTextFocus" -->

TODO:

### `Shift`+`F9`

#### Debug: インライン ブレークポイント

コマンドID: `editor.debug.action.toggleInlineBreakpoint`
<!-- "when": "editorTextFocus" -->

TODO:

#### 基本設定: 設定のコンテキスト メニューの表示

コマンドID: `settings.action.showContextMenu`
<!-- "when": "inSettingsEditor" -->

設定ビューの設定項目にフォーカスしているとき、コンテキストメニューを表示します。

### `Alt`+`F9`

#### 次のコメント スレッドに移動

コマンドID: `editor.action.nextCommentThreadAction`
<!-- "when": "editorFocus" -->

TODO:

### `Shift`+`Alt`+`F9`

#### 前のコメント スレッドに移動する

コマンドID: `editor.action.previousCommentThreadAction`
<!-- "when": "editorFocus" -->

TODO:

## F10

TODO:

### `F10`

#### Debug: ステップ オーバー

コマンドID: `workbench.action.debug.stepOver`
<!-- "when": "debugState == 'stopped'" -->

TODO:

#### Debug: Start Debugging and Stop on Entry

コマンドID: `extension.node-debug.startWithStopOnEntry`
<!-- "when": "!inDebugMode && debugConfigurationType == 'node' || !inDebugMode && debugConfigurationType == 'pwa-extensionHost' || !inDebugMode && debugConfigurationType == 'pwa-node'" -->

TODO:

### `Shift`+`F10`

#### エディターのコンテキスト メニューの表示

コマンドID: `editor.action.showContextMenu`
<!-- "when": "textInputFocus" -->

コンテキストメニューを表示します。

## F11

TODO:

### `F11`

#### 表示: 全画面表示の切り替え

コマンドID: `workbench.action.toggleFullScreen`
<!-- "when": "!isIOS" -->

VSCode の全画面表示の on / off を切り替えます。

#### Debug: ステップ インする

コマンドID: `workbench.action.debug.stepInto`
<!-- "when": "debugState != 'inactive'" -->

TODO:

#### Debug: Start Debugging and Stop on Entry

コマンドID: `extension.node-debug.startWithStopOnEntry`
<!-- "when": "!inDebugMode && activeViewlet == 'workbench.view.debug' && debugConfigurationType == 'node' || !inDebugMode && activeViewlet == 'workbench.view.debug' && debugConfigurationType == 'pwa-extensionHost' || !inDebugMode && activeViewlet == 'workbench.view.debug' && debugConfigurationType == 'pwa-node'" -->

TODO:

### `Shift`+`F11`

#### Debug: ステップ アウト

コマンドID: `workbench.action.debug.stepOut`
<!-- "when": "debugState == 'stopped'" -->

TODO:

### `Ctrl`+`F11`

#### Debug: ターゲットにステップ イン

コマンドID: `workbench.action.debug.stepIntoTarget`
<!-- "when": "inDebugMode && stepIntoTargetsSupported && debugState == 'stopped'" -->

TODO:

## F12

TODO:

### `F12`

#### goToNextReference

コマンドID: `goToNextReference`
<!-- "when": "inReferenceSearchEditor || referenceSearchVisible" -->

TODO:

#### 定義へ移動

コマンドID: `editor.action.revealDefinition`
<!-- "when": "editorHasDefinitionProvider && editorTextFocus && !isInEmbeddedEditor" -->

エディタエリアのカーソル位置の、シンボルが定義されている箇所へ移動します。

#### editor.gotoNextSymbolFromResult

コマンドID: `editor.gotoNextSymbolFromResult`
<!-- "when": "hasSymbols" -->

TODO:

### `Shift`+`F12`

#### goToPreviousReference

コマンドID: `goToPreviousReference`
<!-- "when": "inReferenceSearchEditor || referenceSearchVisible" -->

TODO:

#### 参照へ移動

コマンドID: `editor.action.goToReferences`
<!-- "when": "editorHasReferenceProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor" -->

エディタエリアのカーソル位置の、シンボルを参照している箇所へ移動します。

### `Ctrl`+`F12`

#### 実装へ移動

コマンドID: `editor.action.goToImplementation`
<!-- "when": "editorHasImplementationProvider && editorTextFocus && !isInEmbeddedEditor" -->

TODO:

### `Alt`+`F12`

#### 定義をここに表示

コマンドID: `editor.action.peekDefinition`
<!-- "when": "editorHasDefinitionProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor" -->

エディタエリアのカーソル位置の、シンボルの定義をモーダルで表示します。

### `Ctrl`+`Shift`+`F12`

#### 実装のピーク

コマンドID: `editor.action.peekImplementation`
<!-- "when": "editorHasImplementationProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor" -->

TODO:

### `Shift`+`Alt`+`F12`

#### 参照: すべての参照を検索

コマンドID: `references-view.findReferences`
<!-- "when": "editorHasReferenceProvider" -->

アクティビティバーの「References (参照)」(参照ビュー)を選択状態にして、参照ビューにエディタエリアのカーソル位置の、シンボルを参照している箇所の一覧を表示します。

### `Ctrl`+`K` `F12`

#### 定義を横に開く

コマンドID: `editor.action.revealDefinitionAside`
<!-- "when": "editorHasDefinitionProvider && editorTextFocus && !isInEmbeddedEditor" -->

エディタエリアのカーソル位置の、シンボルの定義のあるファイルを、新しいエディタグループを横に開いて表示します。
