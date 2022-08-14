---
title: "VSCode キーボードショートカット辞書"
emoji: "🐈"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: ["VSCode"]
published: false
---

## なにこれ

VSCode のキーボードショートカットを覚えるために試行錯誤しています。
目的ごとにサマライズされたキーボードショートカットのドキュメントはちらほら見かけますが、キーごとにサマライズされたドキュメントを見かけなかったので、試しにダラダラと書き残して行きます。

キーボードショートカットは、キーによって振る舞いが似たものが登録されています。
キーに割り当てられた振る舞いを知ることによって、ショートカットを覚える近道になるといいなと思っています。

以下にリストアップするのは、「キーボードショートカットビュー」で「ソース」が「既定」になっているものに限定しています。

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

#### 全選択

:::details settings
```json
{
  "key": "ctrl+a",
  "command": "editor.action.selectAll"
}
```
:::

#### リストを全選択

:::details settings
```json
{
  "key": "ctrl+a",
  "command": "list.selectAll",
  "when": "listFocus && listSupportsMultiselect && !inputFocus"
}
```
:::

### `Ctrl`+`;` `A`

#### 全テストを実行

:::details settings
```json
{
  "key": "ctrl+; a",
  "command": "testing.runAll"
}
```
:::

### `Ctrl`+`;` `Ctrl`+`A`

#### 全デバッグを実行

:::details settings
```json
{
  "key": "ctrl+; ctrl+a",
  "command": "testing.debugAll"
}
```
:::

### `Ctrl`+`Shift`+`A`

#### ブロックコメントをトグル

:::details settings
```json
{
  "key": "ctrl+shift+a",
  "command": "editor.action.blockComment",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`A`

#### キーバインディングエディタでキーバインドを追加

:::details settings
```json
{
  "key": "ctrl+k ctrl+a",
  "command": "keybindings.editor.addKeybinding",
  "when": "inKeybindings && keybindingFocus"
}
```
:::

## B

いろいろ

### `Ctrl`+`B`

#### 表示: プライマリ サイド バーの表示/非表示を切り替える

:::details settings
```json
{
  "key": "ctrl+b",
  "command": "workbench.action.toggleSidebarVisibility"
}
```
:::

### `Ctrl`+`Shift`+`B`

#### タスク: ビルド タスクの実行

:::details settings
```json
{
  "key": "ctrl+shift+b",
  "command": "workbench.action.tasks.build",
  "when": "taskCommandsRegistered"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`B`

#### 選択アンカーの設定

選択アンカーの初期位置を設定します。
このキーの後に、選択アンカーの終点位置で `Ctrl`+`K` `Ctrl`+`K` をタイプすると、
初期位置から終点位置までが選択状態になります。
`Ecs` で選択アンカーを解除します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+b",
  "command": "editor.action.setSelectionAnchor",
  "when": "editorTextFocus"
}
```
:::

## C

### `Ctrl`+`C`

なんらかのオブジェクトをコピーしてクリップボードに記憶します。

#### コピー

エディタエリアの文字列をコピーします。

:::details settings
```json
{
  "key": "ctrl+c",
  "command": "editor.action.clipboardCopyAction"
}
```
:::

#### keybindings.editor.copyKeybindingEntry

キーボードショートカットビューで settings の json をコピーします。

:::details settings
```json
{
  "key": "ctrl+c",
  "command": "keybindings.editor.copyKeybindingEntry",
  "when": "inKeybindings && keybindingFocus && !whenFocus"
}
```
:::

#### problems.action.copy

パネルエリアの「Problems (問題)」タブにリストアップされている警告などを json 形式でコピーします。

:::details settings
```json
{
  "key": "ctrl+c",
  "command": "problems.action.copy",
  "when": "problemsVisibility && !relatedInformationFocus && focusedView == 'workbench.panel.markers.view'"
}
```
:::

#### search.action.copyMatch

アクティビティバーの「検索」が選択されていて(検索ビュー)、サイドバーにリストアップされている検索結果をコピーします。

:::details settings
```json
{
  "key": "ctrl+c",
  "command": "search.action.copyMatch",
  "when": "fileMatchOrMatchFocus"
}
```
:::

#### ターミナル: 選択内容のコピー

パネルエリアの「ターミナル」で選択中の文字列をコピーします。

:::details settings
```json
{
  "key": "ctrl+c",
  "command": "workbench.action.terminal.copySelection",
  "when": "terminalFocus && terminalHasBeenCreated && terminalTextSelected || terminalFocus && terminalProcessSupported && terminalTextSelected"
}
```
:::

#### filesExplorer.copy

アクティビティバーの「エクスプローラー」が選択されていて(エクスプローラービュー)、フォルダツリー内のファイルをコピーします。

:::details settings
```json
{
  "key": "ctrl+c",
  "command": "filesExplorer.copy",
  "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !inputFocus"
}
```
:::

#### remote.tunnel.copyAddressInline

TODO:

:::details settings
```json
{
  "key": "ctrl+c",
  "command": "remote.tunnel.copyAddressInline",
  "when": "tunnelViewFocus && tunnelType == 'Detected' && tunnelViewMultiSelection == 'undefined' || tunnelViewFocus && tunnelType == 'Forwarded' && tunnelViewMultiSelection == 'undefined'"
}
```
:::

### `Alt`+`C`

検索するときの、大文字 / 小文字を区別するかを切り替えます。

#### toggleFindCaseSensitive

エディタエリアで検索するとき、大文字 / 小文字の区別を切り替えます。

:::details settings
```json
{
  "key": "alt+c",
  "command": "toggleFindCaseSensitive",
  "when": "editorFocus"
}
```
:::

#### toggleSearchCaseSensitive

アクティビティバーの「検索」が選択されていて(検索ビュー)、サイドバーで検索するとき、大文字 / 小文字の区別を切り替えます。

:::details settings
```json
{
  "key": "alt+c",
  "command": "toggleSearchCaseSensitive",
  "when": "searchViewletFocus"
}
```
:::

#### 検索エディター: 大文字と小文字の区別を切り替える

エディタエリアで「検索エディター」の入力フォームにフォーカスされているとき、大文字 / 小文字の区別を切り替えます。

:::details settings
```json
{
  "key": "alt+c",
  "command": "toggleSearchEditorCaseSensitive",
  "when": "inSearchEditor && searchInputBoxFocus"
}
```
:::

#### ターミナル: 大文字小文字を区別した検索に切り替える

パネルエリアの「ターミナル」で検索するとき、大文字 / 小文字の区別を切り替えます。

:::details settings
```json
{
  "key": "alt+c",
  "command": "workbench.action.terminal.toggleFindCaseSensitive",
  "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
}
```
:::

### `Ctrl`+`Shift`+`C`

#### ターミナル: 選択内容のコピー

パネルエリアの「ターミナル」で選択中の文字列をコピーします。
`Ctrl`+`C` と同様？

:::details settings
```json
{
  "key": "ctrl+shift+c",
  "command": "workbench.action.terminal.copySelection",
  "when": "terminalFocus && terminalHasBeenCreated && terminalTextSelected || terminalFocus && terminalProcessSupported && terminalTextSelected"
}
```
:::

#### 新しい外部ターミナルを開く

パネルエリアの「ターミナル」にフォーカスされていないとき、規定の外部ターミナルを起動します。
(Windows の場合はコマンドプロンプトが起動します。)

:::details settings
```json
{
  "key": "ctrl+shift+c",
  "command": "workbench.action.terminal.openNativeConsole",
  "when": "!terminalFocus"
}
```
:::

### `Shift`+`Alt`+`C`

#### ファイル: アクティブ ファイルのパスのコピー

アクティビティバーの「エクスプローラー」が選択されているとき(エクスプローラービュー)、アクティブなファイルの絶対パスをコピーします。
(`Ctrl`+`K` `Ctrl`+`Shift`+`C` は「相対パス」をコピーします。)

:::details settings
```json
{
  "key": "shift+alt+c",
  "command": "copyFilePath",
  "when": "!editorFocus"
}
```
:::

### `Ctrl`+`K` `C`

#### ファイル: クリップボードとアクティブ ファイルを比較

TODO:

:::details settings
```json
{
  "key": "ctrl+k c",
  "command": "workbench.files.action.compareWithClipboard"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`C`

いろいろ

#### 行コメントの追加

エディタエリアで、行コメントを追加します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+c",
  "command": "editor.action.addCommentLine",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

#### ノートブック: セルの入力を折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+c",
  "command": "notebook.cell.collapseCellInput",
  "when": "notebookCellListFocused && !inputFocus && !notebookCellInputIsCollapsed"
}
```
:::

#### ノートブック: セルの入力を展開する

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+c",
  "command": "notebook.cell.expandCellInput",
  "when": "notebookCellInputIsCollapsed && notebookCellListFocused"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`Shift`+`C`

#### ファイル: アクティブ ファイルの相対パスをコピー

アクティビティバーの「エクスプローラー」が選択されているとき(エクスプローラービュー)、アクティブなファイルの相対パスをコピーします。
(`Shift`+`Alt`+`C` は「絶対パス」をコピーします。)

:::details settings
```json
{
  "key": "ctrl+k ctrl+shift+c",
  "command": "copyRelativeFilePath",
  "when": "!editorFocus"
}
```
:::

### `Ctrl`+`;` `C`

#### テスト: カーソル位置でテストを実行

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 c",
  "command": "testing.runAtCursor",
  "when": "editorTextFocus"
}
```
:::

### `Ctrl`+`;` `Ctrl`+`C`

#### テスト: カーソル位置でテストをデバッグ

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 ctrl+c",
  "command": "testing.debugAtCursor",
  "when": "editorTextFocus"
}
```
:::

## D

### `Ctrl`+`D`

#### 選択した項目を次の一致項目に追加

エディタエリアで選択した文字列を、そのエディタエリア内で検索する。
`Ctrl`+`D` を連続でタイプすると、次の検索結果に移動します。

:::details settings
```json
{
  "key": "ctrl+d",
  "command": "editor.action.addSelectionToNextFindMatch",
  "when": "editorFocus"
}
```
:::

### `Ctrl`+`Shift`+`D`

#### 表示: 実行とデバッグ を表示

アクティビティバーの「Run & Debug (実行とデバッグ)」を選択状態にします。(サイドバーに実行とデバッグが表示されます。)

:::details settings
```json
{
  "key": "ctrl+shift+d",
  "command": "workbench.view.debug",
  "when": "viewContainer.workbench.view.debug.enabled"
}
```
:::

### `Shift`+`Alt`+`D`

#### コンテンツから言語を検出する

TOOD:

:::details settings
```json
{
  "key": "shift+alt+d",
  "command": "editor.detectLanguage",
  "when": "editorTextFocus && !notebookEditable"
}
```
:::

#### ノートブック: セルの検出された言語を承諾する

TOOD:

:::details settings
```json
{
  "key": "shift+alt+d",
  "command": "notebook.cell.detectLanguage",
  "when": "notebookCellEditable && notebookEditable"
}
```
:::

### `Ctrl`+`K` `D`

#### ファイル: 保存済みファイルと作業中のファイルを比較

TOOD:

:::details settings
```json
{
  "key": "ctrl+k d",
  "command": "workbench.files.action.compareWithSaved"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`D`

#### 最後に選択した項目を次の一致項目に移動

TOOD:

:::details settings
```json
{
  "key": "ctrl+k ctrl+d",
  "command": "editor.action.moveSelectionToNextFindMatch",
  "when": "editorFocus"
}
```
:::

## E

### `Ctrl`+`E`

#### ファイルに移動

TODO:

:::details settings
```json
{
  "key": "ctrl+e",
  "command": "workbench.action.quickOpen"
}
```
:::

#### workbench.action.quickOpenNavigateNextInFilePicker

TODO:

:::details settings
```json
{
  "key": "ctrl+e",
  "command": "workbench.action.quickOpenNavigateNextInFilePicker",
  "when": "inFilesPicker && inQuickOpen"
}
```
:::

### `Ctrl`+`Shift`+`E`

#### 表示: エクスプローラー を表示

アクティビティバーの「Explorer (エクスプローラー)」を選択状態にします。(サイドバーにフォルダツリーが表示されます。)

:::details settings
```json
{
  "key": "ctrl+shift+e",
  "command": "workbench.view.explorer",
  "when": "viewContainer.workbench.view.explorer.enabled"
}
```
:::

#### workbench.action.quickOpenNavigatePreviousInFilePicker

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+e",
  "command": "workbench.action.quickOpenNavigatePreviousInFilePicker",
  "when": "inFilesPicker && inQuickOpen"
}
```
:::

### `Ctrl`+`K` `E`

#### エクスプローラー: 開いているエディター ビューにフォーカスを置く

アクティビティバーの「Explorer (エクスプローラー)」を選択状態にして、サイドバーに「開いているエディター」のパネルが追加され、エディタエリアで表示されているファイルの一覧が表示されます。

:::details settings
```json
{
  "key": "ctrl+k e",
  "command": "workbench.files.action.focusOpenEditorsView",
  "when": "workbench.explorer.openEditorsView.active"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`E`

#### keybindings.editor.defineWhenExpression

キーボードショートカットビューにフォーカスしているとき、選択しているキーボードショートカットの「When (いつ)」の値を編集状態にします。

:::details settings
```json
{
  "key": "ctrl+k ctrl+e",
  "command": "keybindings.editor.defineWhenExpression",
  "when": "inKeybindings && keybindingFocus"
}
```
:::

### `Ctrl`+`;` `E`

#### テスト: 失敗したテストの再実行

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 e",
  "command": "testing.reRunFailTests"
}
```
:::

### `Ctrl`+`;` `Ctrl`+`E`

#### テスト: 失敗したテストのデバッグ

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 ctrl+e",
  "command": "testing.debugFailTests"
}
```
:::

## F

検索、フォーマット関連

### `Ctrl`+`F`

#### 検索

エディタエリアをフォーカスしているとき、エディタエリアの文字列を検索するフォームを表示します。
`Esc` で検索を解除できます。

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "actions.find",
  "when": "editorFocus || editorIsOpen"
}
```
:::

#### editor.action.extensioneditor.showfind

TODO:

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "editor.action.extensioneditor.showfind",
  "when": "!editorFocus && activeEditor == 'workbench.editor.extension'"
}
```
:::

#### editor.action.webvieweditor.showFind

TODO:

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "editor.action.webvieweditor.showFind",
  "when": "webviewFindWidgetEnabled && !editorFocus && activeEditor == 'WebviewEditor'"
}
```
:::

#### フィルター対象の REPL フォーカス コンテンツ

TODO:

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "repl.action.filter",
  "when": "inDebugRepl && textInputFocus"
}
```
:::

#### 基本設定: 設定検索にフォーカス

設定ビューで、検索フォームにフォーカスする。

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "settings.action.search",
  "when": "inSettingsEditor"
}
```
:::

#### keybindings.editor.searchKeybindings

キーボードショートカットビューで、フィルタする入力フォームにフォーカスする。

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "keybindings.editor.searchKeybindings",
  "when": "inKeybindings"
}
```
:::

#### list.find

TODO:

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "list.find",
  "when": "listFocus && listSupportsFind"
}
```
:::

#### notebook.find

TODO:

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "notebook.find",
  "when": "notebookEditorFocused && !editorFocus && activeEditor == 'workbench.editor.notebook'"
}
```
:::

#### problems.action.focusFilter

パネルエリアの「Problems (問題)」タブにフォーカスしているとき、フィルタする入力フォームにフォーカスします。

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "problems.action.focusFilter",
  "when": "focusedView == 'workbench.panel.markers.view'"
}
```
:::

#### ターミナル: 検索にフォーカスを置く

パネルエリアの「ターミナル」で、ターミナル内の文字列を検索するフォームを表示します。

:::details settings
```json
{
  "key": "ctrl+f",
  "command": "workbench.action.terminal.focusFind",
  "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
}
```
:::

### `Ctrl`+`Shift`+`F`

#### 検索: フォルダーを指定して検索

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+f",
  "command": "workbench.action.findInFiles"
}
```
:::

#### 表示: 検索 を表示

アクティビティバーの「Search (検索)」を選択状態にして、サイドバーの入力フォームにフォーカスします。

:::details settings
```json
{
  "key": "ctrl+shift+f",
  "command": "workbench.view.search",
  "when": "workbench.view.search.active && neverMatch =~ /doesNotMatch/"
}
```
:::

#### ターミナル: ワークスペースで検索

パネルエリアの「ターミナル」でターミナル内で文字列を選択中に、アクティビティバーの「Search (検索)」を選択状態にして、文字列の検索結果一覧をサイドバーに表示します。

:::details settings
```json
{
  "key": "ctrl+shift+f",
  "command": "workbench.action.terminal.searchWorkspace",
  "when": "terminalFocus && terminalProcessSupported && terminalTextSelected"
}
```
:::

### `Shift`+`Alt`+`F`

#### ドキュメントのフォーマット

エディタエリアの内容を、ファイルタイプごとの規定のフォーマッタでフォーマットします。

:::details settings
```json
{
  "key": "shift+alt+f",
  "command": "editor.action.formatDocument",
  "when": "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor"
}
```
:::

#### ドキュメントのフォーマット

エディタエリアの内容を、ファイルタイプごとの規定のフォーマッタでフォーマットします。

:::details settings
```json
{
  "key": "shift+alt+f",
  "command": "editor.action.formatDocument.none",
  "when": "editorTextFocus && !editorHasDocumentFormattingProvider && !editorReadonly"
}
```
:::

#### セルを書式設定する

TODO:

:::details settings
```json
{
  "key": "shift+alt+f",
  "command": "notebook.formatCell",
  "when": "editorHasDocumentFormattingProvider && editorTextFocus && inCompositeEditor && notebookEditable && !editorReadonly && activeEditor == 'workbench.editor.notebook'"
}
```
:::

#### filesExplorer.findInFolder

サイドバーのエクスプローラーにフォーカスがあるとき、アクティビティバーの「Search (検索)」を選択状態にして、エディタエリアで開いているファイルの階層以下を対象に検索フォームにフォーカスします。

:::details settings
```json
{
  "key": "shift+alt+f",
  "command": "filesExplorer.findInFolder",
  "when": "explorerResourceIsFolder && explorerViewletVisible && filesExplorerFocus && !inputFocus"
}
```
:::

#### ノートブック: ノートブックのフォーマット

TODO:

:::details settings
```json
{
  "key": "shift+alt+f",
  "command": "notebook.format",
  "when": "notebookEditable && !editorTextFocus && activeEditor == 'workbench.editor.notebook'"
}
```
:::

### `Ctrl`+`K` `F`

#### ワークスペース: ワークスペースを閉じる

TODO:

:::details settings
```json
{
  "key": "ctrl+k f",
  "command": "workbench.action.closeFolder",
  "when": "emptyWorkspaceSupport && workbenchState != 'empty'"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`F`

#### 選択範囲のフォーマット

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+f",
  "command": "editor.action.formatSelection",
  "when": "editorHasDocumentSelectionFormattingProvider && editorTextFocus && !editorReadonly"
}
```
:::

### `Ctrl`+`;` `F`

#### テスト: 現在のファイルでテストを実行

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 f",
  "command": "testing.runCurrentFile",
  "when": "editorTextFocus"
}
```
:::

### `Ctrl`+`;` ``Ctrl`+``F`

#### テスト: 現在のファイルでテストをデバッグ

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 ctrl+f",
  "command": "testing.debugCurrentFile",
  "when": "editorTextFocus"
}
```
:::

## G

行移動、ソース管理

### `Ctrl`+`G`

#### 行/列に移動

行/列番号入力フォームが表示されます。

:::details settings
```json
{
  "key": "ctrl+g",
  "command": "workbench.action.gotoLine"
}
```
:::

### `Ctrl`+`Shift`+`G`

#### 表示: ソース管理 を表示

アクティビティバーの「Source Control (ソース管理)」を選択状態にして、サイドバーにソース管理を表示します。

:::details settings
```json
{
  "key": "ctrl+shift+g",
  "command": "workbench.view.scm",
  "when": "workbench.scm.active"
}
```
:::

## H

置換、その他

### `Ctrl`+`H`

#### 置換

エディタエリアの文字列を置換するフォームが表示されます。

:::details settings
```json
{
  "key": "ctrl+h",
  "command": "editor.action.startFindReplaceAction",
  "when": "editorFocus || editorIsOpen"
}
```
:::

### `Alt`+`H`

#### テスト: クイック表示でのテスト履歴の切り替え

TODO:

:::details settings
```json
{
  "key": "alt+h",
  "command": "testing.toggleTestingPeekHistory",
  "when": "testing.isPeekVisible"
}
```
:::

### `Ctrl`+`Shift`+`H`

#### 検索: 複数のファイルで置換

アクティビティバーの「Search (検索)」を選択状態にして、サイドバーに置換フォームを表示し検索文字列入力フォームにフォーカスします。

:::details settings
```json
{
  "key": "ctrl+shift+h",
  "command": "workbench.action.replaceInFiles"
}
```
:::

### `Shift`+`Alt`+`H`

#### editor.showCallHierarchy

TODO:

:::details settings
```json
{
  "key": "shift+alt+h",
  "command": "editor.showCallHierarchy",
  "when": "editorHasCallHierarchyProvider && editorTextFocus && !inReferenceSearchEditor"
}
```
:::

#### editor.showIncomingCalls

TODO:

:::details settings
```json
{
  "key": "shift+alt+h",
  "command": "editor.showIncomingCalls",
  "when": "callHierarchyVisible && callHierarchyDirection == 'outgoingCalls'"
}
```
:::

#### editor.showOutgoingCalls

TODO:

:::details settings
```json
{
  "key": "shift+alt+h",
  "command": "editor.showOutgoingCalls",
  "when": "callHierarchyVisible && callHierarchyDirection == 'incomingCalls'"
}
```
:::

#### editor.showSubtypes

TODO:

:::details settings
```json
{
  "key": "shift+alt+h",
  "command": "editor.showSubtypes",
  "when": "typeHierarchyVisible && typeHierarchyDirection == 'supertypes'"
}
```
:::

#### editor.showSupertypes

TODO:

:::details settings
```json
{
  "key": "shift+alt+h",
  "command": "editor.showSupertypes",
  "when": "typeHierarchyVisible && typeHierarchyDirection == 'subtypes'"
}
```
:::

#### references-view.showCallHierarchy

TODO:

:::details settings
```json
{
  "key": "shift+alt+h",
  "command": "references-view.showCallHierarchy",
  "when": "editorHasCallHierarchyProvider"
}
```
:::

## I

入力補助、その他

### `Ctrl`+`I`

#### 候補をトリガー

エディタエリアがフォーカスしているとき、カーソル位置で可能な入力候補を表示します。
再度 `Ctrl`+`I` タイプすると、[toggleSuggestionDetails](#togglesuggestiondetails) が表示されます。

:::details settings
```json
{
  "key": "ctrl+i",
  "command": "editor.action.triggerSuggest",
  "when": "editorHasCompletionItemProvider && textInputFocus && !editorReadonly"
}
```
:::

#### toggleSuggestionDetails

エディタエリアで入力候補を表示しているとき、候補の詳細を表示します。
再度 `Ctrl`+`I` タイプすると候補の詳細を閉じます。
つまり、[候補をトリガー](#候補をトリガー) と [toggleSuggestionDetails](#togglesuggestiondetails) が交互に切り替わります。

:::details settings
```json
{
  "key": "ctrl+i",
  "command": "toggleSuggestionDetails",
  "when": "suggestWidgetVisible && textInputFocus"
}
```
:::

### `Ctrl`+`Shift`+`I`

#### 開発者: 開発者ツールの切り替え

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+i",
  "command": "workbench.action.toggleDevTools",
  "when": "isDevelopment"
}
```
:::

### `Shift`+`Alt`+`I`

#### カーソルを行末に挿入

エディタエリアがフォーカスしているとき、選択した文字列の末尾にカーソルを移動し挿入モードになります。
複数行選択されているときは、複数行の末尾に挿入モードになります。

:::details settings
```json
{
  "key": "shift+alt+i",
  "command": "editor.action.insertCursorAtEndOfEachLineSelected",
  "when": "editorTextFocus"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`I`

#### ホバーの表示

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+i",
  "command": "editor.action.showHover",
  "when": "editorTextFocus"
}
```
:::

#### デバッグ: ホバーの表示

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+i",
  "command": "editor.debug.action.showDebugHover",
  "when": "editorTextFocus && inDebugMode"
}
```
:::

#### workbench.action.showTreeHover

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+i",
  "command": "workbench.action.showTreeHover",
  "when": "customTreeView && listFocus && !inputFocus"
}
```
:::

### `Ctrl`+`;` `Ctrl`+`I`

#### テスト: インライン テスト出力の切り替え

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 ctrl+i",
  "command": "testing.toggleInlineTestOutput"
}
```
:::

## J

検索、フォーマット関連

### `Ctrl`+`J`

#### 表示: パネルの表示/非表示の切り替え

パネルエリアの表示 / 非表示を切り替えます。

:::details settings
```json
{
  "key": "ctrl+j",
  "command": "workbench.action.togglePanel"
}
```
:::

### `Ctrl`+`Shift`+`J`

#### workbench.action.search.toggleQueryDetails

エディタエリアで検索ビューを開いているとき、詳細フィルターのフォームの表示 / 非表示を切り替えます。

:::details settings
```json
{
  "key": "ctrl+shift+j",
  "command": "workbench.action.search.toggleQueryDetails",
  "when": "inSearchEditor || searchViewletFocus"
}
```
:::

### `Alt`+`Windows`+`J`

#### ノートブック: 次のセルと結合する

TODO:

:::details settings
```json
{
  "key": "alt+win+j",
  "command": "notebook.cell.joinBelow",
  "when": "notebookEditorFocused"
}
```
:::

### `Shift`+`Alt`+`Windows`+`J`

#### ノートブック: 前のセルと結合する

TODO:

:::details settings
```json
{
  "key": "shift+alt+win+j",
  "command": "notebook.cell.joinAbove",
  "when": "notebookEditorFocused"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`J`

#### すべて展開

エディタエリアをフォーカスしているとき、折りたたみを全て展開します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+j",
  "command": "editor.unfoldAll",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## K

`Ctrl`+`K` は、エディタエリアの表示関連の修飾キーに使われているため、それ以外のショートカットキーをリストアップします。

### `Ctrl`+`Shift`+`K`

#### 行の削除

エディタエリアのカーソルがある行を削除します。

:::details settings
```json
{
  "key": "ctrl+shift+k",
  "command": "editor.action.deleteLines",
  "when": "textInputFocus && !editorReadonly"
}
```
:::

### `Alt`+`K`

#### keybindings.editor.recordSearchKeys

キーボードショートカットビューのフィルタ入力フォームにフォーカスしているとき、このキー (`Alt`+`K`) の次の入力キーを記憶します。
`Esc` で記憶モードを抜けます。

:::details settings
```json
{
  "key": "alt+k",
  "command": "keybindings.editor.recordSearchKeys",
  "when": "inKeybindings && inKeybindingsSearch"
}
```
:::

## L

TODO:

### `Ctrl`+`L`

#### 線の選択を展開する

エディタエリアのカーソルがある１行を選択状態にします。

:::details settings
```json
{
  "key": "ctrl+l",
  "command": "expandLineSelection",
  "when": "textInputFocus"
}
```
:::

### `Ctrl`+`L`

#### ノートブック: アクティブ セルを中央に置く

TODO:

:::details settings
```json
{
  "key": "ctrl+l",
  "command": "notebook.centerActiveCell",
  "when": "notebookEditorFocused"
}
```
:::

### `Shift`+`L`

#### ノートブック: ノートブック行番号の切り替え

TODO:

:::details settings
```json
{
  "key": "shift+l",
  "command": "notebook.toggleLineNumbers",
  "when": "notebookEditorFocused && !inputFocus"
}
```
:::

### `Alt`+`L`

#### toggleFindInSelection

TODO:

:::details settings
```json
{
  "key": "alt+l",
  "command": "toggleFindInSelection",
  "when": "editorFocus"
}
```
:::

#### 検索エディター: コンテキスト行を切り替える

TODO:

:::details settings
```json
{
  "key": "alt+l",
  "command": "toggleSearchEditorContextLines",
  "when": "inSearchEditor"
}
```
:::

### `Ctrl`+`Shift`+`L`

#### 一致するすべての出現箇所を選択します

エディタエリアで選択中の文字列が一致する全ての出現箇所を選択します。
`Esc` で選択を解除します。

:::details settings
```json
{
  "key": "ctrl+shift+l",
  "command": "editor.action.selectHighlights",
  "when": "editorFocus"
}
```
:::

#### addCursorsAtSearchResults

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+l",
  "command": "addCursorsAtSearchResults",
  "when": "fileMatchOrMatchFocus && searchViewletVisible"
}
```
:::

#### 検索エディター: すべての一致を選択

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+l",
  "command": "selectAllSearchEditorMatches",
  "when": "inSearchEditor"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`L`

#### 折りたたみの切り替え

エディタエリアでカーソルがある行の折りたたみを切り替えます。

:::details settings
```json
{
  "key": "ctrl+k ctrl+l",
  "command": "editor.toggleFold",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

### `Ctrl`+`;` `L`

#### テスト: 最後の実行の再実行

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 l",
  "command": "testing.reRunLastRun"
}
```
:::

### `Ctrl`+`;` `Ctrl`+`L`

#### テスト: 最後の実行のデバッグ

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 ctrl+l",
  "command": "testing.debugLastRun"
}
```
:::

## M

TODO:

### `M`

#### ノートブック: セルを Markdown に変更する

TODO:

:::details settings
```json
{
  "key": "m",
  "command": "notebook.cell.changeToMarkdown",
  "when": "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook' && notebookCellType == 'code'"
}
```
:::

### `Ctrl`+`M`

#### Tab キーを切り替えるとフォーカスが移動します

TODO:

:::details settings
```json
{
  "key": "ctrl+m",
  "command": "editor.action.toggleTabFocusMode"
}
```
:::

### `Ctrl`+`Shift`+`M`

#### 表示: 問題 の切り替え

パネルエリアの「Problems (問題)」タブの表示 / 非表示を切り替えます。

:::details settings
```json
{
  "key": "ctrl+shift+m",
  "command": "workbench.actions.view.problems",
  "when": "workbench.panel.markers.view.active"
}
```
:::

### `Ctrl`+`K` `M`

#### 言語モードの変更

TODO:

:::details settings
```json
{
  "key": "ctrl+k m",
  "command": "workbench.action.editor.changeLanguageMode",
  "when": "!notebookEditorFocused"
}
```
:::

### `Ctrl`+`;` `Ctrl`+`M`

#### テスト: 出力をクイック表示する

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 ctrl+m",
  "command": "testing.openOutputPeek"
}
```
:::

## N

TODO:

### `Ctrl`+`N`

#### ファイル: 無題の新規ファイル

無題の新規ファイルを新しいタブで開きます。

:::details settings
```json
{
  "key": "ctrl+n",
  "command": "workbench.action.files.newUntitledFile"
}
```
:::

### `Ctrl`+`Shift`+`N`

#### 新しいウィンドウ

新しいVSCodeのウィンドウを開きます。

:::details settings
```json
{
  "key": "ctrl+shift+n",
  "command": "workbench.action.newWindow"
}
```
:::

### `Ctrl`+`Alt`+`Windows`+`N`

#### 作成: 新しいファイル

無題の新規ファイルを、ファイルの種類を選択後に新しいタブで開きます。

:::details settings
```json
{
  "key": "ctrl+alt+win+n",
  "command": "welcome.showNewFileEntries"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`N`

#### Git: 選択した範囲のステージを解除

エディタエリアの差分ビューで、選択した範囲のステージを解除します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+n",
  "command": "git.unstageSelectedRanges",
  "when": "isInDiffEditor"
}
```
:::

## O

TODO:

### `Ctrl`+`O`

#### ファイル: ファイルを開く

ファイルを開くプロンプトを表示します。

:::details settings
```json
{
  "key": "ctrl+o",
  "command": "workbench.action.files.openFile",
  "when": "true"
}
```
:::

#### ファイル: 開く

TODO:

:::details settings
```json
{
  "key": "ctrl+o",
  "command": "workbench.action.files.openFileFolder",
  "when": "isMacNative && openFolderWorkspaceSupport"
}
```
:::

#### ファイル: フォルダーを開く

TODO:

:::details settings
```json
{
  "key": "ctrl+o",
  "command": "workbench.action.files.openFolderViaWorkspace",
  "when": "!openFolderWorkspaceSupport && workbenchState == 'workspace'"
}
```
:::

#### workbench.action.files.openLocalFile

TODO:

:::details settings
```json
{
  "key": "ctrl+o",
  "command": "workbench.action.files.openLocalFile",
  "when": "remoteFileDialogVisible"
}
```
:::

### `Ctrl`+`Shift`+`O`

#### エディターでシンボルに移動

プロンプトを表示して、`@` が入力された状態になります。
(プロンプトの先頭を `@` から始めると、エディタエリアで開いているファイルのシンボルを指定して移動することができます。)

:::details settings
```json
{
  "key": "ctrl+shift+o",
  "command": "workbench.action.gotoSymbol"
}
```
:::

### `Shift`+`Alt`+`O`

#### インポートを整理

TODO:

:::details settings
```json
{
  "key": "shift+alt+o",
  "command": "editor.action.organizeImports",
  "when": "editorTextFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)source\\.organizeImports\\b/"
}
```
:::

### `Ctrl`+`K` `O`

#### ファイル: 新しいウィンドウでアクティブ ファイルを開く

エディタエリアで開いているファイルを、VSCodeの新しいウィンドウでも開きます。

:::details settings
```json
{
  "key": "ctrl+k o",
  "command": "workbench.action.files.showOpenedFileInNewWindow",
  "when": "emptyWorkspaceSupport"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`O`

#### ファイル: フォルダーを開く

フォルダを開くプロンプトを表示します。
フォルダを開くと、そのウィンドウを閉じて開き直します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+o",
  "command": "workbench.action.files.openFolder",
  "when": "openFolderWorkspaceSupport"
}
```
:::

#### workbench.action.files.openLocalFolder

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+o",
  "command": "workbench.action.files.openLocalFolder",
  "when": "remoteFileDialogVisible"
}
```
:::

### `Ctrl`+`;` `Ctrl`+`O`

#### テスト: 出力の表示

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 ctrl+o",
  "command": "testing.showMostRecentOutput",
  "when": "testing.hasAnyResults"
}
```
:::

## P

TODO:

### `Ctrl`+`P`

#### ファイルに移動

ファイルを開くプロンプトを表示します。

:::details settings
```json
{
  "key": "ctrl+p",
  "command": "workbench.action.quickOpen"
}
```
:::

#### workbench.action.quickOpenNavigateNextInFilePicker

TODO:

:::details settings
```json
{
  "key": "ctrl+p",
  "command": "workbench.action.quickOpenNavigateNextInFilePicker",
  "when": "inFilesPicker && inQuickOpen"
}
```
:::

### `Alt`+`P`

#### togglePreserveCase

TODO:

:::details settings
```json
{
  "key": "alt+p",
  "command": "togglePreserveCase",
  "when": "editorFocus"
}
```
:::

#### keybindings.editor.toggleSortByPrecedence

キーボードショートカットビューにフォーカスしているとき、優先順位で並び替えの有効 / 無効を切り替えます。

:::details settings
```json
{
  "key": "alt+p",
  "command": "keybindings.editor.toggleSortByPrecedence",
  "when": "inKeybindings"
}
```
:::

#### toggleSearchPreserveCase

TODO:

:::details settings
```json
{
  "key": "alt+p",
  "command": "toggleSearchPreserveCase",
  "when": "searchViewletFocus"
}
```
:::

### `Ctrl`+`Shift`+`P`

#### すべてのコマンドの表示

コマンドパレットを表示します。
[`F1`](#f1-1) と同様です。

:::details settings
```json
{
  "key": "ctrl+shift+p",
  "command": "workbench.action.showCommands"
}
```
:::

#### workbench.action.quickOpenNavigatePreviousInFilePicker

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+p",
  "command": "workbench.action.quickOpenNavigatePreviousInFilePicker",
  "when": "inFilesPicker && inQuickOpen"
}
```
:::

### `Ctrl`+`K` `P`

#### workbench.action.files.copyPathOfActiveFile

エディタエリアで開いているファイルの絶対パスをクリップボードにコピーします。

:::details settings
```json
{
  "key": "ctrl+k p",
  "command": "workbench.action.files.copyPathOfActiveFile"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`P`

#### 表示: すべてのエディターを外観別に表示

ウィンドウ内のエディタエリアで開いている全てのファイルをリストアップした、ファイルを開くプロンプトを表示します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+p",
  "command": "workbench.action.showAllEditors"
}
```
:::

## Q

TODO:

### `Ctrl`+`Q`

#### workbench.action.quickOpenView

クイックオープンビューを表示します。
`Ctrl`+`Q` を連続でタイプするか、`Ctrl` をタイプしたまま上下キーをタイプして、表示するビューを選択します。
`Ctrl`+`Q` の連続タイプで [workbench.action.quickOpenNavigateNextInViewPicker](#workbenchactionquickopennavigatenextinfilepicker) に状態が遷移します。

:::details settings
```json
{
  "key": "ctrl+q",
  "command": "workbench.action.quickOpenView"
}
```
:::

#### workbench.action.quickOpenNavigateNextInViewPicker

クイックオープンビューを表示しているとき、表示するビューの次の選択肢にフォーカスします。

:::details settings
```json
{
  "key": "ctrl+q",
  "command": "workbench.action.quickOpenNavigateNextInViewPicker",
  "when": "inQuickOpen && inViewsPicker"
}
```
:::

### `Ctrl`+`Shift`+`Q`

#### workbench.action.quickOpenNavigatePreviousInViewPicker

クイックオープンビューを表示しているとき、表示するビューの前の選択肢にフォーカスします。
[workbench.action.quickOpenNavigateNextInViewPicker](#workbenchactionquickopennavigatenextinfilepicker) の逆です。

:::details settings
```json
{
  "key": "ctrl+shift+q",
  "command": "workbench.action.quickOpenNavigatePreviousInViewPicker",
  "when": "inQuickOpen && inViewsPicker"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`Q`

#### 最後の編集位置へ移動

ウィンドウ内のエディタエリアのエディタで、最後に編集(文字列の削除や移動)を行った位置へカーソルを移動します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+q",
  "command": "workbench.action.navigateToLastEditLocation"
}
```
:::

## R

TODO:

### `Ctrl`+`R`

#### ファイル: 最近開いた項目

クイックオープンビューで、最近開いたフォルダのリストを表示します。
TODO: `最近開いたフォルダのリストの正式名称`

:::details settings
```json
{
  "key": "ctrl+r",
  "command": "workbench.action.openRecent"
}
```
:::

#### workbench.action.quickOpenNavigateNextInRecentFilesPicker

TODO:

:::details settings
```json
{
  "key": "ctrl+r",
  "command": "workbench.action.quickOpenNavigateNextInRecentFilesPicker",
  "when": "inQuickOpen && inRecentFilesPicker"
}
```
:::

#### 開発者: ウィンドウの再読み込み

TODO:

:::details settings
```json
{
  "key": "ctrl+r",
  "command": "workbench.action.reloadWindow",
  "when": "isDevelopment"
}
```
:::

### `Alt`+`R`

#### toggleFindRegex

TODO:

:::details settings
```json
{
  "key": "alt+r",
  "command": "toggleFindRegex",
  "when": "editorFocus"
}
```
:::

#### 検索エディター: 正規表現の使用を切り替える

検索ビューの入力フォームにフォーカスしているとき、入力文字列の正規表現の使用を切り替えます。

:::details settings
```json
{
  "key": "alt+r",
  "command": "toggleSearchEditorRegex",
  "when": "inSearchEditor && searchInputBoxFocus"
}
```
:::

#### toggleSearchRegex

検索ビューにフォーカスしているとき、正規表現の使用を切り替えます。

:::details settings
```json
{
  "key": "alt+r",
  "command": "toggleSearchRegex",
  "when": "searchViewletFocus"
}
```
:::

#### ターミナル: 正規表現を使用した検索に切り替える

パネルエリアのターミナルタブにフォーカスしているとき、検索フォームを表示して正規表現の使用を切り替えます。

:::details settings
```json
{
  "key": "alt+r",
  "command": "workbench.action.terminal.toggleFindRegex",
  "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
}
```
:::

### `Ctrl`+`Alt`+`R`

#### リファクター

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+r",
  "command": "editor.action.refactor",
  "when": "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly"
}
```
:::

#### 検索エディター: もう一度検索する

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+r",
  "command": "rerunSearchEditorSearch",
  "when": "inSearchEditor"
}
```
:::

#### workbench.action.quickOpenNavigatePreviousInRecentFilesPicker

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+r",
  "command": "workbench.action.quickOpenNavigatePreviousInRecentFilesPicker",
  "when": "inQuickOpen && inRecentFilesPicker"
}
```
:::

### `Shift`+`Alt`+`R`

#### ファイル: エクスプローラーで表示する

TODO:

:::details settings
```json
{
  "key": "shift+alt+r",
  "command": "revealFileInOS",
  "when": "!editorFocus"
}
```
:::

### `Ctrl`+`K` `R`

#### workbench.action.files.revealActiveFileInWindows

TODO:

:::details settings
```json
{
  "key": "ctrl+k r",
  "command": "workbench.action.files.revealActiveFileInWindows"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`R`

#### ヘルプ: キーボード ショートカットの参照

キーボードショートカットのチートシートの Web ページをブラウザで表示します。
https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf

:::details settings
```json
{
  "key": "ctrl+k ctrl+r",
  "command": "workbench.action.keybindingsReference"
}
```
:::

#### Git: 選択範囲を元に戻す

エディタエリアの差分ビューで、差分を元に戻します。
(※文字列や行を選択しても全ての差分が元に戻るので、コマンドタイトルが間違ってる？)

:::details settings
```json
{
  "key": "ctrl+k ctrl+r",
  "command": "git.revertSelectedRanges",
  "when": "isInDiffEditor"
}
```
:::

### `Ctrl`+`;` `Ctrl`+`R`

#### テスト: テストの更新

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 ctrl+r",
  "command": "testing.refreshTests",
  "when": "testing.canRefresh"
}
```
:::

## S

ファイルの保存、その他

### `Ctrl`+`S`

#### ファイル: 保存

エディタエリアで開いているファイルの編集内容を保存します。

:::details settings
```json
{
  "key": "ctrl+s",
  "command": "workbench.action.files.save"
}
```
:::

### `Ctrl`+`Shift`+`S`

#### ファイル: 名前を付けて保存

エディタエリアで開いているファイルの編集内容を、名前を付けて保存します。

:::details settings
```json
{
  "key": "ctrl+shift+s",
  "command": "workbench.action.files.saveAs"
}
```
:::

### `Ctrl`+`Shift`+`S`

#### workbench.action.files.saveLocalFile

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+s",
  "command": "workbench.action.files.saveLocalFile",
  "when": "remoteFileDialogVisible"
}
```
:::

### `Ctrl`+`K` `S`

#### saveAll

エディタエリアで開いている全てのファイルの編集内容を保存します。

:::details settings
```json
{
  "key": "ctrl+k s",
  "command": "saveAll"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`S`

#### 基本設定: キーボード ショートカットを開く

キーボードショートカットビューを開きます。

:::details settings
```json
{
  "key": "ctrl+k ctrl+s",
  "command": "workbench.action.openGlobalKeybindings"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`Shift`+`S`

#### ファイル: フォーマットしないで保存

エディタエリアで開いているファイルの編集内容を、フォーマットしないで保存します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+shift+s",
  "command": "workbench.action.files.saveWithoutFormatting"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`Alt`+`S`

#### Git: 選択した範囲をステージする

エディタエリアの差分ビューで、選択した範囲をステージにします。
TODO: ステージしますの表現が違和感

:::details settings
```json
{
  "key": "ctrl+k ctrl+alt+s",
  "command": "git.stageSelectedRanges",
  "when": "isInDiffEditor"
}
```
:::

## T

TODO:

### `Ctrl`+`T`

#### ワークスペース内のシンボルへ移動

プロンプトを表示して、`#` が入力された状態になります。
TODO: @と#の違いを理解する

:::details settings
```json
{
  "key": "ctrl+t",
  "command": "workbench.action.showAllSymbols"
}
```
:::

### `Ctrl`+`Shift`+`T`

#### 表示: 閉じたエディターを再度開く

エディタエリアで閉じたファイルを、別のタブで再度開きます。
`Ctrl`+`Shift`+`T` を連続でタイプすると、最近から遡って閉じたファイルを開きます。

:::details settings
```json
{
  "key": "ctrl+shift+t",
  "command": "workbench.action.reopenClosedEditor"
}
```
:::

### `Ctrl`+`K` `T`

#### ノートブック: セルの出力を折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k t",
  "command": "notebook.cell.collapseCellOutput",
  "when": "notebookCellHasOutputs && notebookCellListFocused && !inputFocus && !notebookCellOutputIsCollapsed"
}
```
:::

#### ノートブック: セルの出力を展開する

TODO:

:::details settings
```json
{
  "key": "ctrl+k t",
  "command": "notebook.cell.expandCellOutput",
  "when": "notebookCellListFocused && notebookCellOutputIsCollapsed"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`T`

#### 基本設定: 配色テーマ

配色テーマを選択するプロンプトが表示されます。

:::details settings
```json
{
  "key": "ctrl+k ctrl+t",
  "command": "workbench.action.selectTheme"
}
```
:::

## U

TODO:

### `Ctrl`+`U`

#### カーソルを元に戻す

エディタエリアのカーソル位置を、前にカーソルが当たっていた位置に戻します。
`Ctrl`+`U` を連続でタイプすると、遡ってカーソル位置を戻します。

:::details settings
```json
{
  "key": "ctrl+u",
  "command": "cursorUndo",
  "when": "textInputFocus"
}
```
:::

### `Ctrl`+`Shift`+`U`

#### 表示: 出力 の切り替え

パネルエリアの出力タブにフォーカスしてパネルエリアを開きます。

:::details settings
```json
{
  "key": "ctrl+shift+u",
  "command": "workbench.action.output.toggleOutput",
  "when": "workbench.panel.output.active"
}
```
:::

### `Ctrl`+`K` `U`

#### 表示: グループ内の保存済みエディターを閉じる

エディタエリアのエディタグループ内で、編集内容が保存されている他のタブを閉じます。
今開いているタブは残ります。
エディタエリア以外にフォーカスしているときは、直近で編集しているエディタグループ以外のエディタグループを閉じます。

:::details settings
```json
{
  "key": "ctrl+k u",
  "command": "workbench.action.closeUnmodifiedEditors"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`U`

#### 行コメントの削除

エディタエリアのカーソルがある１行を行コメントにします。
すでに行コメントになっている行にカーソルがあるときは、行コメントを外します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+u",
  "command": "editor.action.removeCommentLine",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

## V

TODO:

### `Ctrl`+`V`

#### 貼り付け

クリップボードに保存している内容を貼り付けます。

:::details settings
```json
{
  "key": "ctrl+v",
  "command": "editor.action.clipboardPasteAction"
}
```
:::

#### ターミナル: アクティブな端末に貼り付け

パネルエリアのターミナルタブにフォーカスしているとき、クリップボードに保存している内容をターミナルのカーソル位置に貼り付けます。

:::details settings
```json
{
  "key": "ctrl+v",
  "command": "workbench.action.terminal.paste",
  "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
}
```
:::

#### workbench.action.terminal.sendSequence

TODO:

:::details settings
```json
{
  "key": "ctrl+v",
  "command": "workbench.action.terminal.sendSequence",
  "when": "terminalFocus && !accessibilityModeEnabled && terminalShellType == 'pwsh'"
}
```
:::

#### filesExplorer.paste

エクスプローラがフォーカスされているとき、クリップボードの内容がファイルなら、ファイルを複製します。

:::details settings
```json
{
  "key": "ctrl+v",
  "command": "filesExplorer.paste",
  "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceReadonly && !inputFocus"
}
```
:::

### `Ctrl`+`Shift`+`V`

#### ノートブック: セルを上に貼り付け

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+v",
  "command": "notebook.cell.pasteAbove",
  "when": "notebookEditorFocused && !inputFocus"
}
```
:::

#### ターミナル: アクティブな端末に貼り付け

パネルエリアのターミナルタブにフォーカスしているとき、クリップボードに保存している内容をターミナルのカーソル位置に貼り付けます。

:::details settings
```json
{
  "key": "ctrl+shift+v",
  "command": "workbench.action.terminal.paste",
  "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
}
```
:::

#### Markdown: プレビューを開く

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+v",
  "command": "markdown.showPreview",
  "when": "!notebookEditorFocused && editorLangId == 'markdown'"
}
```
:::

### `Ctrl`+`K` `V`

#### Markdown: プレビューを横に表示

TODO:

:::details settings
```json
{
  "key": "ctrl+k v",
  "command": "markdown.showPreviewToSide",
  "when": "!notebookEditorFocused && editorLangId == 'markdown'"
}
```
:::

## W

エディタを閉じる、検索フォームの「単語単位で検索する」の on / off を切り替える。

### `Ctrl`+`W`

#### 表示: エディターを閉じる

エディタエリアでフォーカスしているタブのみを閉じます。

:::details settings
```json
{
  "key": "ctrl+w",
  "command": "workbench.action.closeActiveEditor"
}
```
:::

#### workbench.action.closeGroup

TODO:

:::details settings
```json
{
  "key": "ctrl+w",
  "command": "workbench.action.closeGroup",
  "when": "activeEditorGroupEmpty && multipleEditorGroups"
}
```
:::

#### ターミナル: エディター領域でアクティブなターミナルを強制終了

TODO:

:::details settings
```json
{
  "key": "ctrl+w",
  "command": "workbench.action.terminal.killEditor",
  "when": "terminalEditorFocus && terminalFocus && terminalHasBeenCreated && resourceScheme == 'vscode-terminal' || terminalEditorFocus && terminalFocus && terminalProcessSupported && resourceScheme == 'vscode-terminal'"
}
```
:::

### `Alt`+`W`

#### toggleFindWholeWord

エディタエリアにフォーカスしているとき、検索フォームの「単語単位で検索する」の on / off を切り替えます。

:::details settings
```json
{
  "key": "alt+w",
  "command": "toggleFindWholeWord",
  "when": "editorFocus"
}
```
:::

#### 検索エディター: 単語単位での検索を切り替える

検索ビューの検索フォームにフォーカスしているとき、検索フォームの「単語単位で検索する」の on / off を切り替えます。

:::details settings
```json
{
  "key": "alt+w",
  "command": "toggleSearchEditorWholeWord",
  "when": "inSearchEditor && searchInputBoxFocus"
}
```
:::

#### toggleSearchWholeWord

検索ビューの検索結果にフォーカスしているとき、検索フォームの「単語単位で検索する」の on / off を切り替えます。

:::details settings
```json
{
  "key": "alt+w",
  "command": "toggleSearchWholeWord",
  "when": "searchViewletFocus"
}
```
:::

#### ターミナル: 単語単位での検索に切り替える

パネルエリアのターミナルにフォーカスしているとき、検索フォームの「単語単位で検索する」の on / off を切り替えます。

:::details settings
```json
{
  "key": "alt+w",
  "command": "workbench.action.terminal.toggleFindWholeWord",
  "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
}
```
:::

### `Ctrl`+`Shift`+`W`

#### ウィンドウを閉じる

VSCode のウィンドウを閉じます。

:::details settings
```json
{
  "key": "ctrl+shift+w",
  "command": "workbench.action.closeWindow"
}
```
:::

### `Ctrl`+`K` `W`

#### 表示: グループ内のすべてのエディターを閉じる

エディタエリアでフォーカスしているエディタグループ内のタブを全て閉じます。

:::details settings
```json
{
  "key": "ctrl+k w",
  "command": "workbench.action.closeEditorsInGroup"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`W`

#### 表示: すべてのエディターを閉じる

エディタエリアのタブを (フォーカス外のエディタグループも含めて) 全て閉じます。

:::details settings
```json
{
  "key": "ctrl+k ctrl+w",
  "command": "workbench.action.closeAllEditors"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`Shift`+`W`

#### 表示: すべてのエディター グループを閉じる

エディタエリアのタブを (フォーカス外のエディタグループも含めて) 全て閉じます。
TODO: `Ctrl`+`K` `Ctrl`+`W` との違いを調べる

:::details settings
```json
{
  "key": "ctrl+k ctrl+shift+w",
  "command": "workbench.action.closeAllGroups"
}
```
:::

## X

TODO:

### `Ctrl`+`X`

#### 切り取り

エディタエリアで選択した文字列を切り取ります。

:::details settings
```json
{
  "key": "ctrl+x",
  "command": "editor.action.clipboardCutAction"
}
```
:::

#### filesExplorer.cut

アクティビティバーの「エクスプローラー」が選択されていて(エクスプローラービュー)、フォルダツリー内のファイルを切り取ります。

:::details settings
```json
{
  "key": "ctrl+x",
  "command": "filesExplorer.cut",
  "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
}
```
:::

### `Ctrl`+`Shift`+`X`

#### 表示: 拡張機能 を表示

アクティビティバーの「Extensions (拡張機能)」を開きます。

:::details settings
```json
{
  "key": "ctrl+shift+x",
  "command": "workbench.view.extensions",
  "when": "viewContainer.workbench.view.extensions.enabled"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`X`

#### 末尾の空白のトリミング

エディタエリアでカーソルがある行の末尾の空白文字を除去します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+x",
  "command": "editor.action.trimTrailingWhitespace",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

### `Ctrl`+`;` `Ctrl`+`X`

#### testing.cancelRun

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_1 ctrl+x",
  "command": "testing.cancelRun"
}
```
:::

## Y

TODO:

### `Y`

#### ノートブック: セルをコードに変更する

TODO:

:::details settings
```json
{
  "key": "y",
  "command": "notebook.cell.changeToCode",
  "when": "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook' && notebookCellType == 'markup'"
}
```
:::

### `Ctrl`+`Y`

#### やり直し

`Ctrl`+`Z` で元に戻した変更を、やり直し (元に戻すのを辞め) ます。
`Ctrl`+`Shift`+`Z` と同様です。

:::details settings
```json
{
  "key": "ctrl+y",
  "command": "redo"
}
```
:::

### `Ctrl`+`Shift`+`Y`

#### 表示: デバッグ コンソール の切り替え

パネルエリアの「デバッグコンソール」を表示 / 非表示を切り替えます。

:::details settings
```json
{
  "key": "ctrl+shift+y",
  "command": "workbench.debug.action.toggleRepl",
  "when": "workbench.panel.repl.view.active"
}
```
:::

## Z

TODO:

### `Ctrl`+`Z`

#### 元に戻す

変更を１つ (のアクションを) 元に戻します。

:::details settings
```json
{
  "key": "ctrl+z",
  "command": "undo"
}
```
:::

### `Alt`+`Z`

#### 表示: [右端で折り返す] の設定/解除

エディタエリアの表示上の改行の設定の on / off を切り替えます。
１行の文字数がエディタエリアの右端を超える行は、行番号をキープしたまま、エディタエリアの右端で折り返して表示します。

:::details settings
```json
{
  "key": "alt+z",
  "command": "editor.action.toggleWordWrap"
}
```
:::

#### ターミナル: コンテンツの幅にサイズを切り替える

TODO:

:::details settings
```json
{
  "key": "alt+z",
  "command": "workbench.action.terminal.sizeToContentWidth",
  "when": "terminalFocus && terminalHasBeenCreated && terminalIsOpen || terminalFocus && terminalIsOpen && terminalProcessSupported"
}
```
:::

### `Ctrl`+`Shift`+`Z`

#### やり直し

`Ctrl`+`Z` で元に戻した変更を、やり直し (元に戻すのを辞め) ます。
`Ctrl`+`Y` と同様です。

:::details settings
```json
{
  "key": "ctrl+shift+z",
  "command": "redo"
}
```
:::

### `Ctrl`+`K` `Z`

#### 表示: Zen Mode の切り替え

ウィンドウの表示設定の「Zen モード」の on / off を切り替えます。

:::details settings
```json
{
  "key": "ctrl+k z",
  "command": "workbench.action.toggleZenMode"
}
```
:::

## 0

TODO:

### `Ctrl`+`0`

#### 表示: プライマリ サイド バーにフォーカスする

サイドバーにフォーカスします。
MEMO: 使えそう

:::details settings
```json
{
  "key": "ctrl+0",
  "command": "workbench.action.focusSideBar"
}
```
:::

### `Alt`+`0`

#### 表示: グループ内の最後のエディターを開く

エディタエリアの最後にフォーカスしたエディタグループの、一番後ろのタブを表示します。

:::details settings
```json
{
  "key": "alt+0",
  "command": "workbench.action.lastEditorInGroup"
}
```
:::

### `Shift`+`Alt`+`0`

#### エディター レイアウトの垂直/水平を切り替える

エディタエリアで複数のエディタグループに分割しているとき、エディタの表示レイアウトの垂直 / 水平を切り替えます。

:::details settings
```json
{
  "key": "shift+alt+0",
  "command": "workbench.action.toggleEditorGroupLayout"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`0`

#### すべて折りたたみ

エディタエリアでフォーカスしているファイルの、可能な折りたたみを全て折りたたみます。

:::details settings
```json
{
  "key": "ctrl+k ctrl+0",
  "command": "editor.foldAll",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## 1

TODO:

### `Ctrl`+`1`

#### 表示: 最初のエディター グループにフォーカス

エディタエリアの最初のエディタグループにフォーカスします。
MEMO: 使う

:::details settings
```json
{
  "key": "ctrl+1",
  "command": "workbench.action.focusFirstEditorGroup"
}
```
:::

### `Alt`+`1`

#### workbench.action.openEditorAtIndex1

エディタエリアでフォーカスしているエディタグループの、最初のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "alt+1",
  "command": "workbench.action.openEditorAtIndex1"
}
```
:::

### `Ctrl`+`Shift`+`1`

#### editor.action.replaceOne

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+1",
  "command": "editor.action.replaceOne",
  "when": "editorFocus && findWidgetVisible"
}
```
:::

#### search.action.replace

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+1",
  "command": "search.action.replace",
  "when": "matchFocus && replaceActive && searchViewletVisible"
}
```
:::

#### search.action.replaceAllInFile

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+1",
  "command": "search.action.replaceAllInFile",
  "when": "fileMatchFocus && replaceActive && searchViewletVisible"
}
```
:::

#### search.action.replaceAllInFolder

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+1",
  "command": "search.action.replaceAllInFolder",
  "when": "folderMatchFocus && replaceActive && searchViewletVisible"
}
```
:::

### `Shift`+`Alt`+`1`

#### 表示: エディターを 1 番目のグループに移動

エディタエリアで複数のエディタグループに分割しているとき、２番目以降のエディタグループで開いているタブを、１番目のエディタグループに移動します。
MEMO: 使えそう

:::details settings
```json
{
  "key": "shift+alt+1",
  "command": "workbench.action.moveEditorToFirstGroup"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`1`

#### レベル 1 で折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+1",
  "command": "editor.foldLevel1",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## 2

TODO:

### `Ctrl`+`2`

#### workbench.action.focusSecondEditorGroup

エディタエリアの２番目のエディタグループにフォーカスします。
２番目のエディタグループが存在しないときは、エディタグループを追加します。
MEMO: 使う

:::details settings
```json
{
  "key": "ctrl+2",
  "command": "workbench.action.focusSecondEditorGroup"
}
```
:::

### `Alt`+`2`

#### workbench.action.openEditorAtIndex2

エディタエリアでフォーカスしているエディタグループの、２番目のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "alt+2",
  "command": "workbench.action.openEditorAtIndex2"
}
```
:::

### `Ctrl`+`Shift`+`2`

#### workbench.action.terminal.sendSequence

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+2",
  "command": "workbench.action.terminal.sendSequence",
  "when": "terminalFocus"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`2`

#### レベル 2 で折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+2",
  "command": "editor.foldLevel2",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## 3

TODO:

### `Ctrl`+`3`

#### workbench.action.focusThirdEditorGroup

エディタエリアの３番目のエディタグループにフォーカスします。
エディタグループが２つ表示されていて３番目のエディタグループが存在しないときは、エディタグループを追加します。
MEMO: 使う

:::details settings
```json
{
  "key": "ctrl+3",
  "command": "workbench.action.focusThirdEditorGroup"
}
```
:::

### `Alt`+`3`

#### workbench.action.openEditorAtIndex3

エディタエリアでフォーカスしているエディタグループの、３番目のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "alt+3",
  "command": "workbench.action.openEditorAtIndex3"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`3`

#### レベル 3 で折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+3",
  "command": "editor.foldLevel3",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## 4

TODO:

### `Ctrl`+`4`

#### workbench.action.focusFourthEditorGroup

エディタエリアの４番目のエディタグループにフォーカスします。
エディタグループが３つ表示されていて４番目のエディタグループが存在しないときは、エディタグループを追加します。
MEMO: 使う

:::details settings
```json
{
  "key": "ctrl+4",
  "command": "workbench.action.focusFourthEditorGroup"
}
```
:::

### `Alt`+`4`

#### workbench.action.openEditorAtIndex4

エディタエリアでフォーカスしているエディタグループの、４番目のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "alt+4",
  "command": "workbench.action.openEditorAtIndex4"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`4`

#### レベル 4 で折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+4",
  "command": "editor.foldLevel4",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## 5

TODO:

### `Ctrl`+`5`

#### workbench.action.focusFifthEditorGroup

エディタエリアの５番目のエディタグループにフォーカスします。
エディタグループが４つ表示されていて５番目のエディタグループが存在しないときは、エディタグループを追加します。

:::details settings
```json
{
  "key": "ctrl+5",
  "command": "workbench.action.focusFifthEditorGroup"
}
```
:::

### `Alt`+`4`

#### workbench.action.openEditorAtIndex5

エディタエリアでフォーカスしているエディタグループの、５番目のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "alt+5",
  "command": "workbench.action.openEditorAtIndex5"
}
```
:::

### `Ctrl`+`Shift`+`5`

#### ターミナル: ターミナルの分割

パネルエリアのターミナルにフォーカスしているとき、ターミナルを分割します。

:::details settings
```json
{
  "key": "ctrl+shift+5",
  "command": "workbench.action.terminal.split",
  "when": "terminalFocus && terminalProcessSupported || terminalFocus && terminalWebExtensionContributedProfile"
}
```
:::

#### workbench.action.terminal.splitInstance

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+5",
  "command": "workbench.action.terminal.splitInstance",
  "when": "terminalProcessSupported && terminalTabsFocus"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`5`

#### レベル 5 で折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+5",
  "command": "editor.foldLevel5",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## 6

TODO:

### `Ctrl`+`6`

#### workbench.action.focusSixthEditorGroup

エディタエリアの６番目のエディタグループにフォーカスします。
エディタグループが５つ表示されていて６番目のエディタグループが存在しないときは、エディタグループを追加します。

:::details settings
```json
{
  "key": "ctrl+6",
  "command": "workbench.action.focusSixthEditorGroup"
}
```
:::

### `Alt`+`6`

#### workbench.action.openEditorAtIndex6

エディタエリアでフォーカスしているエディタグループの、６番目のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "alt+6",
  "command": "workbench.action.openEditorAtIndex6"
}
```
:::

### `Ctrl`+`Shift`+`6`

#### workbench.action.terminal.sendSequence

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+6",
  "command": "workbench.action.terminal.sendSequence",
  "when": "terminalFocus"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`6`

#### レベル 6 で折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+6",
  "command": "editor.foldLevel6",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## 7

TODO:

### `Ctrl`+`7`

#### workbench.action.focusSeventhEditorGroup

エディタエリアの７番目のエディタグループにフォーカスします。
エディタグループが６つ表示されていて７番目のエディタグループが存在しないときは、エディタグループを追加します。

:::details settings
```json
{
  "key": "ctrl+7",
  "command": "workbench.action.focusSeventhEditorGroup"
}
```
:::

### `Alt`+`7`

#### workbench.action.openEditorAtIndex7

エディタエリアでフォーカスしているエディタグループの、７番目のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "alt+7",
  "command": "workbench.action.openEditorAtIndex7"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`7`

#### レベル 7 で折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+7",
  "command": "editor.foldLevel7",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## 8

TODO:

### `Ctrl`+`8`

#### workbench.action.focusEighthEditorGroup

エディタエリアの８番目のエディタグループにフォーカスします。
エディタグループが７つ表示されていて８番目のエディタグループが存在しないときは、エディタグループを追加します。

:::details settings
```json
{
  "key": "ctrl+8",
  "command": "workbench.action.focusEighthEditorGroup"
}
```
:::

### `Alt`+`8`

#### workbench.action.openEditorAtIndex8

エディタエリアでフォーカスしているエディタグループの、８番目のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "alt+8",
  "command": "workbench.action.openEditorAtIndex8"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`8`

#### すべての領域を折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+8",
  "command": "editor.foldAllMarkerRegions",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## 9

TODO:

### `Ctrl`+`9`

#### 表示: グループ内の最後のエディターを開く

エディタエリアでフォーカスしているエディタグループの、最後のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "ctrl+9",
  "command": "workbench.action.lastEditorInGroup"
}
```
:::

### `Alt`+`9`

#### workbench.action.openEditorAtIndex9

エディタエリアでフォーカスしているエディタグループの、９番目のタブを表示します。
MEMO: 使う

:::details settings
```json
{
  "key": "alt+9",
  "command": "workbench.action.openEditorAtIndex9"
}
```
:::

### `Shift`+`Alt`+`9`

#### 表示: エディターを最後のグループに移動

エディタエリアで複数のエディタグループに分割しているとき、最後以外のエディタグループで開いているタブを、最後のエディタグループに移動します。

:::details settings
```json
{
  "key": "shift+alt+9",
  "command": "workbench.action.moveEditorToLastGroup"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`9`

#### すべての領域を展開

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+9",
  "command": "editor.unfoldAllMarkerRegions",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

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

設定ビューを開きます。

:::details settings
```json
{
  "key": "ctrl+oem_comma",
  "command": "workbench.action.openSettings"
}
```
:::

### `Ctrl`+`Shift`+`,`

#### 前の値に置換

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+oem_comma",
  "command": "editor.action.inPlaceReplace.up",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`,`

#### 選択範囲から手動折りたたみ範囲を作成する

選択した複数行で折りたたみできるようにします。
`Ctrl`+`K` `Ctrl`+`.` で解除します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+oem_comma",
  "command": "editor.createFoldingRangeFromSelection",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## -

フォントサイズを小さくする、その他いろいろ

### `Ctrl`+`-`

#### 表示: 縮小

ウィンドウのフォントサイズを１サイズ小さくします。
他の VSCode のウィンドウにも影響します。
`Ctrl`+`=` でサイズを大きくします。
MEMO: めっちゃ使う

:::details settings
```json
{
  "key": "ctrl+oem_minus",
  "command": "workbench.action.zoomOut"
}
```
:::

### `Alt`+`-`

#### 検索エディター: コンテキスト行を減らす

TODO:

:::details settings
```json
{
  "key": "alt+oem_minus",
  "command": "decreaseSearchEditorContextLines",
  "when": "inSearchEditor"
}
```
:::

### `Ctrl`+`Shift`+`-`

#### 表示: 縮小

ウィンドウのフォントサイズを１サイズ小さくします。
他の VSCode のウィンドウにも影響します。
`Ctrl`+`-` と同様です。

:::details settings
```json
{
  "key": "ctrl+shift+oem_minus",
  "command": "workbench.action.zoomOut"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`-`

#### 選択されたものを除くすべての領域を折りたたむ

エディタエリアで選択した範囲以外の全ての折りたたみ可能な領域を全て折りたたみます。
MEMO: これめっちゃ便利

:::details settings
```json
{
  "key": "ctrl+k ctrl+oem_minus",
  "command": "editor.foldAllExcept",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## .

TODO:

### `Ctrl`+`.`

#### クイック フィックス

エディタエリアで、カーソル位置のクイックフィックスを開きます。

:::details settings
```json
{
  "key": "ctrl+oem_period",
  "command": "editor.action.quickFix",
  "when": "editorHasCodeActionsProvider && editorTextFocus && !editorReadonly"
}
```
:::

#### problems.action.showQuickFixes

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_period",
  "command": "problems.action.showQuickFixes",
  "when": "problemFocus"
}
```
:::

### `Ctrl`+`Shift`+`.`

#### 次の値に置換

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+oem_period",
  "command": "editor.action.inPlaceReplace.down",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

#### breadcrumbs.focusAndSelect

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+oem_period",
  "command": "breadcrumbs.focusAndSelect",
  "when": "breadcrumbsPossible && breadcrumbsVisible"
}
```
:::

#### breadcrumbs.toggleToOn

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+oem_period",
  "command": "breadcrumbs.toggleToOn",
  "when": "!config.breadcrumbs.enabled"
}
```
:::

### `Shift`+`Alt`+`.`

#### 自動修正

TODO:

:::details settings
```json
{
  "key": "shift+alt+oem_period",
  "command": "editor.action.autoFix",
  "when": "editorTextFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)quickfix\\b/"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`.`

#### 手動折りたたみ範囲を削除する

`Ctrl`+`K` `Ctrl`+`,` で作成した折りたたみ設定を解除します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+oem_period",
  "command": "editor.removeManualFoldingRanges",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## /

TODO:

### `Ctrl`+`/`

#### 行コメントの切り替え

エディタエリアで、カーソル位置の行のコメントの on / off を切り替えます。

:::details settings
```json
{
  "key": "ctrl+oem_2",
  "command": "editor.action.commentLine",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

#### toggleExplainMode

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_2",
  "command": "toggleExplainMode",
  "when": "suggestWidgetVisible"
}
```
:::

#### workbench.action.terminal.sendSequence

TODO:

:::details settings
```json
{
  "key": "ctrl+oem_2",
  "command": "workbench.action.terminal.sendSequence",
  "when": "terminalFocus"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`/`

#### すべてのブロック コメントの折りたたみ

エディタエリアでフォーカスしているファイルの、全てのブロックコメントを折りたたみます。

:::details settings
```json
{
  "key": "ctrl+k ctrl+oem_2",
  "command": "editor.foldAllBlockComments",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## :

キーボードショートカットなし

## ;

`Ctrl`+`;` は、テスト関連の修飾キーに使われているため、それ以外のショートカットキーをリストアップします。

### `Ctrl`+`Shift`+`;`

#### breadcrumbs.focus

エディタエリアのパンくずリストの、現在の要素のアイテムにフォーカスします。

:::details settings
```json
{
  "key": "ctrl+shift+oem_1",
  "command": "breadcrumbs.focus",
  "when": "breadcrumbsPossible"
}
```
:::

## <

キーボードショートカットなし

## =

TODO:

### `Ctrl`+`=`

#### 表示: 拡大

ウィンドウのフォントサイズを１サイズ大きくします。
他の VSCode のウィンドウにも影響します。
`Ctrl`+`-` でサイズを小さくします。
MEMO: めっちゃ使う

:::details settings
```json
{
  "key": "ctrl+oem_plus",
  "command": "workbench.action.zoomIn"
}
```
:::

### `Alt`+`=`

#### 検索エディター: コンテキスト行を増やす

TODO:

:::details settings
```json
{
  "key": "alt+oem_plus",
  "command": "increaseSearchEditorContextLines",
  "when": "inSearchEditor"
}
```
:::

### `Ctrl`+`Shift`+`=`

#### 表示: 拡大

ウィンドウのフォントサイズを１サイズ大きくします。
`Ctrl`+`=` と同様です。

:::details settings
```json
{
  "key": "ctrl+shift+oem_plus",
  "command": "workbench.action.zoomIn"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`=`

#### 選択されたものを除くすべての領域を展開する

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+oem_plus",
  "command": "editor.unfoldAllExcept",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

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

エディタエリアのカーソル位置の行のインデントを、左に１つずらします。
複数行を選択しているときは、選択している行のインデントを、左に１つずらします。
MEMO: 使えそう

:::details settings
```json
{
  "key": "ctrl+oem_4",
  "command": "editor.action.outdentLines",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

### `Alt`+`[`

#### 前のインライン候補を表示する

TODO:

:::details settings
```json
{
  "key": "alt+oem_4",
  "command": "editor.action.inlineSuggest.showPrevious",
  "when": "inlineSuggestionVisible && !editorReadonly"
}
```
:::

### `Ctrl`+`Shift`+`[`

#### ノートブック: セルを折りたたむ

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+oem_4",
  "command": "notebook.fold",
  "when": "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook'"
}
```
:::

#### 折りたたみ

エディタエリアでカーソルがある行を折りたたみます。

:::details settings
```json
{
  "key": "ctrl+shift+oem_4",
  "command": "editor.fold",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`[`

#### 再帰的に折りたたむ

エディタエリアでカーソルがある行を再帰的に折りたたみます。
`Ctrl`+`K` `Ctrl`+`]` で折りたたみを再帰的に展開します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+oem_4",
  "command": "editor.foldRecursively",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## \

TODO:

### `Ctrl`+`\`

#### 表示: エディターの分割

エディタエリアの最後にフォーカスしたエディタグループで開いているタブと同じファイルを、新しいエディタグループを横に分割して表示します。
`Ctrl`+`K` `Ctrl`+`\` で縦に分割します。
MEMO: 使えそう

:::details settings
```json
{
  "key": "ctrl+oem_5",
  "command": "workbench.action.splitEditor"
}
```
:::

### `Ctrl`+`Shift`+`\`

#### ターミナル: ターミナル タブ ビューにフォーカス

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+oem_5",
  "command": "workbench.action.terminal.focusTabs",
  "when": "terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported || terminalHasBeenCreated && terminalTabsFocus || terminalProcessSupported && terminalTabsFocus"
}
```
:::

#### ブラケットへ移動

エディタエリアのカーソル位置から一番近くにあるブラケット (`{` `}`) に移動します。
カーソル位置がブラケットにあるときは、対応するブラケットに移動します。

:::details settings
```json
{
  "key": "ctrl+shift+oem_5",
  "command": "editor.action.jumpToBracket",
  "when": "editorTextFocus"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`\`

#### 表示: 垂直にエディターを分割

エディタエリアの最後にフォーカスしたエディタグループで開いているタブと同じファイルを、新しいエディタグループを縦に分割して表示します。
`Ctrl`+`\` で横に分割します。
MEMO: 使えそう

:::details settings
```json
{
  "key": "ctrl+k ctrl+oem_5",
  "command": "workbench.action.splitEditorOrthogonal"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`Shift`+`\`

#### ノートブック: セルを分割する

TODO:

:::details settings
```json
{
  "key": "ctrl+k ctrl+shift+oem_5",
  "command": "notebook.cell.split",
  "when": "notebookCellEditable && notebookEditable && notebookEditorFocused"
}
```
:::

#### 表示: グループ内のエディターの分割

エディタエリアの最後にフォーカスしたエディタグループで開いているタブと同じファイルを、同じエディタグループを横に分割して表示します。
再度 `Ctrl`+`K` `Ctrl`+`Shift`+`\` をタイプすると、分割した表示を１つに統合します。(表示: グループ内のエディターに参加する)

:::details settings
```json
{
  "key": "ctrl+k ctrl+shift+oem_5",
  "command": "workbench.action.splitEditorInGroup",
  "when": "activeEditorCanSplitInGroup"
}
```
:::

#### 表示: グループ内のエディターに参加する

`Ctrl`+`K` `Ctrl`+`Shift`+`\` で分割した表示を１つに統合します。

:::details settings
```json
{
  "key": "ctrl+k ctrl+shift+oem_5",
  "command": "workbench.action.joinEditorInGroup",
  "when": "sideBySideEditorActive"
}
```
:::

## ]

TODO:

### `Ctrl`+`]`

#### 行のインデント

エディタエリアのカーソル位置の行のインデントを、右に１つずらします。
複数行を選択しているときは、選択している行のインデントを、右に１つずらします。
MEMO: 使えそう

:::details settings
```json
{
  "key": "ctrl+oem_6",
  "command": "editor.action.indentLines",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

### `Alt`+`]`

#### 次のインライン候補を表示する

TODO:

:::details settings
```json
{
  "key": "alt+oem_6",
  "command": "editor.action.inlineSuggest.showNext",
  "when": "inlineSuggestionVisible && !editorReadonly"
}
```
:::

### `Ctrl`+`Shift`+`]`

#### ノートブック: セルを展開する

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+oem_6",
  "command": "notebook.unfold",
  "when": "notebookEditorFocused && !inputFocus && activeEditor == 'workbench.editor.notebook'"
}
```
:::

#### 展開

エディタエリアでカーソルがある行を折りたたみを解除します。

:::details settings
```json
{
  "key": "ctrl+shift+oem_6",
  "command": "editor.unfold",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

### `Ctrl`+`K` `Ctrl`+`]`

#### 再帰的に展開する

エディタエリアでカーソルがある行の折りたたみを再帰的に展開します。
`Ctrl`+`K` `Ctrl`+`[` で再帰的に折りたたみます。

:::details settings
```json
{
  "key": "ctrl+k ctrl+oem_6",
  "command": "editor.unfoldRecursively",
  "when": "editorTextFocus && foldingEnabled"
}
```
:::

## ^

キーボードショートカットなし

## _

キーボードショートカットなし

## `

TODO:

### `Ctrl`+`` ` ``

#### 表示: ターミナル の切り替え

パネルエリアのターミナルタブの表示 / 非表示を切り替えます。
(Windows で初期状態では効かないので、ひと手間必要なようです。https://blog.mamemaki.com/entry/2020/10/30/102041)

:::details settings
```json
{
  "key": "ctrl+oem_3",
  "command": "workbench.action.terminal.toggleTerminal",
  "when": "terminal.active"
}
```
:::

### `Ctrl`+`Shift`+`` ` ``

#### ターミナル: 新しいターミナルを作成する

パネルエリアのターミナルタブを開き、新しいターミナルを起動します。

:::details settings
```json
{
  "key": "ctrl+shift+oem_3",
  "command": "workbench.action.terminal.new",
  "when": "terminalProcessSupported || terminalWebExtensionContributedProfile"
}
```
:::

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

コマンドパレットを表示します。
[`Ctrl`+`Shift`+`P`](#ctrlshiftp) と同様です。

:::details settings
```json
{
  "key": "f1",
  "command": "workbench.action.showCommands"
}
```
:::

## F2

名前の変更

### `F2`

#### シンボルの名前変更

エディタエリアにフォーカスしているとき、カーソル位置のシンボルを変更します。

:::details settings
```json
{
  "key": "f2",
  "command": "editor.action.rename",
  "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly"
}
```
:::

#### renameFile

アクティビティバーの「エクスプローラー」が選択されている(エクスプローラービュー)とき、ファイル名 / フォルダ名を変更します。

:::details settings
```json
{
  "key": "f2",
  "command": "renameFile",
  "when": "explorerViewletVisible && filesExplorerFocus && !explorerResourceIsRoot && !explorerResourceReadonly && !inputFocus"
}
```
:::

#### debug.renameWatchExpression

TODO:

:::details settings
```json
{
  "key": "f2",
  "command": "debug.renameWatchExpression",
  "when": "watchExpressionsFocused"
}
```
:::

#### debug.setVariable

TODO:

:::details settings
```json
{
  "key": "f2",
  "command": "debug.setVariable",
  "when": "variablesFocused"
}
```
:::

#### remote.tunnel.label

TODO:

:::details settings
```json
{
  "key": "f2",
  "command": "remote.tunnel.label",
  "when": "tunnelViewFocus && tunnelType == 'Forwarded' && tunnelViewMultiSelection == 'undefined'"
}
```
:::

#### workbench.action.terminal.renameInstance

TODO:

```json
{
  "key": "f2",
  "command": "workbench.action.terminal.renameInstance",
  "when": "terminalHasBeenCreated && terminalTabsFocus && terminalTabsSingularSelection || terminalProcessSupported && terminalTabsFocus && terminalTabsSingularSelection"
}
```
:::

### `Ctrl`+`F2`

#### すべての出現箇所を変更

エディタエリアにフォーカスしているとき、カーソル位置のシンボルと同じシンボルの箇所を同時に変更します。

:::details settings
```json
{
  "key": "ctrl+f2",
  "command": "editor.action.changeAll",
  "when": "editorTextFocus && !editorReadonly"
}
```
:::

### `Ctrl`+`Shift`+`F2`

#### editor.action.linkedEditing

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+f2",
  "command": "editor.action.linkedEditing",
  "when": "editorHasRenameProvider && editorTextFocus && !editorReadonly"
}
```
:::

### `Ctrl`+`K` `F2`

#### togglePeekWidgetFocus

TODO:

:::details settings
```json
{
  "key": "ctrl+k f2",
  "command": "togglePeekWidgetFocus",
  "when": "inReferenceSearchEditor || referenceSearchVisible"
}
```
:::

## F3

検索結果の移動

### `F3`

#### 次を検索

エディタエリアにフォーカスしているとき、前回検索した文字列で検索します。
連続で `F3` をタイプすると、次の検索結果に移動します。
前回の検索文字列が設定されていないとき、検索フォームが表示されます。

:::details settings
```json
{
  "key": "f3",
  "command": "editor.action.nextMatchFindAction",
  "when": "editorFocus"
}
```
:::

#### list.find

TODO:

:::details settings
```json
{
  "key": "f3",
  "command": "list.find",
  "when": "listFocus && listSupportsFind"
}
```
:::

#### ターミナル: 次を検索

パネルエリアのターミナルタブにフォーカスしているとき、前回検索した文字列で検索します。
連続で `F3` をタイプすると、次の検索結果に移動します。
前回の検索文字列が設定されていないとき、検索フォームが表示されます。

:::details settings
```json
{
  "key": "f3",
  "command": "workbench.action.terminal.findNext",
  "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
}
```
:::

### `Shift`+`F3`

#### 前を検索

エディタエリアにフォーカスしているとき、前回検索した文字列で検索します。
連続で `F3` をタイプすると、前の検索結果に移動します。
前回の検索文字列が設定されていないとき、検索フォームが表示されます。

:::details settings
```json
{
  "key": "shift+f3",
  "command": "editor.action.previousMatchFindAction",
  "when": "editorFocus"
}
```
:::

#### ターミナル: 前を検索

パネルエリアのターミナルタブにフォーカスしているとき、前回検索した文字列で検索します。
連続で `F3` をタイプすると、前の検索結果に移動します。
前回の検索文字列が設定されていないとき、検索フォームが表示されます。

:::details settings
```json
{
  "key": "shift+f3",
  "command": "workbench.action.terminal.findPrevious",
  "when": "terminalFindFocused && terminalHasBeenCreated || terminalFindFocused && terminalProcessSupported || terminalFocus && terminalHasBeenCreated || terminalFocus && terminalProcessSupported"
}
```
:::

### `Ctrl`+`F3`

#### 次の選択項目を検索

エディタエリアにフォーカスしているとき、カーソル位置の文字列で検索して、次に文字列が現れる箇所に移動します。
文字列が選択状態のときは、選択した文字列で検索します。

:::details settings
```json
{
  "key": "ctrl+f3",
  "command": "editor.action.nextSelectionMatchFindAction",
  "when": "editorFocus"
}
```
:::

### `Alt`+`F3`

#### 次の変更箇所を表示

TODO:

:::details settings
```json
{
  "key": "alt+f3",
  "command": "editor.action.dirtydiff.next",
  "when": "editorTextFocus && !textCompareEditorActive"
}
```
:::

### `Ctrl`+`Shift`+`F3`

#### 前の選択項目を検索

エディタエリアにフォーカスしているとき、カーソル位置の文字列で検索して、前に文字列が現れる箇所に移動します。
文字列が選択状態のときは、選択した文字列で検索します。

:::details settings
```json
{
  "key": "ctrl+shift+f3",
  "command": "editor.action.previousSelectionMatchFindAction",
  "when": "editorFocus"
}
```
:::

### `Shift`+`Alt`+`F3`

#### 前の変更箇所を表示

TODO:

:::details settings
```json
{
  "key": "shift+alt+f3",
  "command": "editor.action.dirtydiff.previous",
  "when": "editorTextFocus && !textCompareEditorActive"
}
```
:::

## F4

検索結果の移動

### `F4`

#### goToNextReference

TODO:

:::details settings
```json
{
  "key": "f4",
  "command": "goToNextReference",
  "when": "inReferenceSearchEditor || referenceSearchVisible"
}
```
:::

#### 検索: 次の検索結果にフォーカス

検索ビューにフォーカスしているとき、次の検索結果の文字列にフォーカスします。

:::details settings
```json
{
  "key": "f4",
  "command": "search.action.focusNextSearchResult",
  "when": "hasSearchResult || inSearchEditor"
}
```
:::

#### 次の参照に移動

TODO:

:::details settings
```json
{
  "key": "f4",
  "command": "references-view.next",
  "when": "reference-list.hasResult && references-view.canNavigate"
}
```
:::

### `Shift`+`F4`

#### goToPreviousReference

TODO:

:::details settings
```json
{
  "key": "shift+f4",
  "command": "goToPreviousReference",
  "when": "inReferenceSearchEditor || referenceSearchVisible"
}
```
:::

#### 検索: 前の検索結果にフォーカス

検索ビューにフォーカスしているとき、前の検索結果の文字列にフォーカスします。

:::details settings
```json
{
  "key": "shift+f4",
  "command": "search.action.focusPreviousSearchResult",
  "when": "hasSearchResult || inSearchEditor"
}
```
:::

#### 前の参照に移動

TODO:

:::details settings
```json
{
  "key": "shift+f4",
  "command": "references-view.prev",
  "when": "reference-list.hasResult && references-view.canNavigate"
}
```
:::

### `Ctrl`+`F4`

#### 表示: エディターを閉じる

エディタエリアの最後にフォーカスしていたタブを閉じます。
`Ctrl`+`W` と同様です。

:::details settings
```json
{
  "key": "ctrl+f4",
  "command": "workbench.action.closeActiveEditor"
}
```
:::

#### workbench.action.closeGroup

TODO:

:::details settings
```json
{
  "key": "ctrl+f4",
  "command": "workbench.action.closeGroup",
  "when": "activeEditorGroupEmpty && multipleEditorGroups"
}
```
:::

#### ターミナル: エディター領域でアクティブなターミナルを強制終了

TODO:

:::details settings
```json
{
  "key": "ctrl+f4",
  "command": "workbench.action.terminal.killEditor",
  "when": "terminalEditorFocus && terminalFocus && terminalHasBeenCreated && resourceScheme == 'vscode-terminal' || terminalEditorFocus && terminalFocus && terminalProcessSupported && resourceScheme == 'vscode-terminal'"
}
```
:::

### `Alt`+`F4`

#### ウィンドウを閉じる

VSCode のウィンドウを閉じます。
`Ctrl`+`Shift`+`W` と同様です。

:::details settings
```json
{
  "key": "alt+f4",
  "command": "workbench.action.closeWindow"
}
```
:::

## F5

デバッガの起動・停止

### `F5`

#### Debug: デバッグの開始

デバッガを起動します。
TODO:

:::details settings
```json
{
  "key": "f5",
  "command": "workbench.action.debug.start",
  "when": "debuggersAvailable && debugState == 'inactive'"
}
```
:::

#### Debug: 続行

TODO:

:::details settings
```json
{
  "key": "f5",
  "command": "workbench.action.debug.continue",
  "when": "debugState == 'stopped'"
}
```
:::

#### debug.openView

TODO:

:::details settings
```json
{
  "key": "f5",
  "command": "debug.openView",
  "when": "!debuggersAvailable"
}
```
:::

### `Shift`+`F5`

#### Debug: 停止

TODO:

:::details settings
```json
{
  "key": "shift+f5",
  "command": "workbench.action.debug.stop",
  "when": "inDebugMode && !focusedSessionIsAttach"
}
```
:::

#### Debug: 切断

TODO:

:::details settings
```json
{
  "key": "shift+f5",
  "command": "workbench.action.debug.disconnect",
  "when": "focusedSessionIsAttach && inDebugMode"
}
```
:::

### `Ctrl`+`F5`

#### Debug: デバッグなしで開始

TODO:

:::details settings
```json
{
  "key": "ctrl+f5",
  "command": "workbench.action.debug.run",
  "when": "debuggersAvailable && debugState != 'initializing'"
}
```
:::

#### debug.openView

TODO:

:::details settings
```json
{
  "key": "ctrl+f5",
  "command": "debug.openView",
  "when": "!debuggersAvailable"
}
```
:::

### `Alt`+`F5`

#### 次の変更に移動

TODO:

:::details settings
```json
{
  "key": "alt+f5",
  "command": "workbench.action.editor.nextChange",
  "when": "editorTextFocus && !textCompareEditorActive"
}
```
:::

#### workbench.action.editor.nextChange

TODO:

:::details settings
```json
{
  "key": "alt+f5",
  "command": "workbench.action.compareEditor.nextChange",
  "when": "textCompareEditorVisible"
}
```
:::

### `Ctrl`+`Shift`+`F5`

#### Debug: 再起動

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+f5",
  "command": "workbench.action.debug.restart",
  "when": "inDebugMode"
}
```
:::

### `Shift`+`Alt`+`F5`

#### 前の変更に移動

TODO:

:::details settings
```json
{
  "key": "shift+alt+f5",
  "command": "workbench.action.editor.previousChange",
  "when": "editorTextFocus && !textCompareEditorActive"
}
```
:::

#### workbench.action.compareEditor.previousChange

TODO:

:::details settings
```json
{
  "key": "shift+alt+f5",
  "command": "workbench.action.compareEditor.previousChange",
  "when": "textCompareEditorVisible"
}
```
:::

## F6

TODO:

### `F6`

#### 表示: 次の部分にフォーカス

TODO:

:::details settings
```json
{
  "key": "f6",
  "command": "workbench.action.focusNextPart"
}
```
:::

#### Debug: 一時停止

TODO:

:::details settings
```json
{
  "key": "f6",
  "command": "workbench.action.debug.pause",
  "when": "debugState == 'running'"
}
```
:::

### `F6`

#### 表示: 前の部分にフォーカス

TODO:

:::details settings
```json
{
  "key": "shift+f6",
  "command": "workbench.action.focusPreviousPart"
}
```
:::

## F7

TODO:

### `F7`

#### 次の差分に移動

TODO:

:::details settings
```json
{
  "key": "f7",
  "command": "editor.action.diffReview.next",
  "when": "isInDiffEditor"
}
```
:::

#### 次のシンボル ハイライトに移動

TODO:

:::details settings
```json
{
  "key": "f7",
  "command": "editor.action.wordHighlight.next",
  "when": "editorTextFocus && hasWordHighlights"
}
```
:::

### `Shift`+`F7`

#### 前の差分に移動

TODO:

:::details settings
```json
{
  "key": "shift+f7",
  "command": "editor.action.diffReview.prev",
  "when": "isInDiffEditor"
}
```
:::

#### 前のシンボル ハイライトに移動

TODO:

:::details settings
```json
{
  "key": "shift+f7",
  "command": "editor.action.wordHighlight.prev",
  "when": "editorTextFocus && hasWordHighlights"
}
```
:::

## F8

TODO:

### `F8`

#### ファイル内の次の問題 (エラー、警告、情報) へ移動

エディタエリアにフォーカスしているとき、問題 (エラー、警告、情報) のあるエディタグループのタブの該当の箇所へ移動します。
複数の問題があるとき、連続で `F8` をタイプすると次の問題の箇所へ移動します。

:::details settings
```json
{
  "key": "f8",
  "command": "editor.action.marker.nextInFiles",
  "when": "editorFocus"
}
```
:::

### `Shift`+`F8`

#### ファイル内の前の問題 (エラー、警告、情報) へ移動

エディタエリアにフォーカスしているとき、問題 (エラー、警告、情報) のあるエディタグループのタブの該当の箇所へ移動します。
複数の問題があるとき、連続で `Shift`+`F8` をタイプすると前の問題の箇所へ移動します。

:::details settings
```json
{
  "key": "shift+f8",
  "command": "editor.action.marker.prevInFiles",
  "when": "editorFocus"
}
```
:::

### `Alt`+`F8`

#### 次の問題 (エラー、警告、情報) へ移動

エディタエリアにフォーカスしているタブ内に問題 (エラー、警告、情報) のあるとき、該当の箇所へ移動します。
複数の問題があるとき、連続で `Alt`+`F8` をタイプすると次の問題の箇所へ移動します。

:::details settings
```json
{
  "key": "alt+f8",
  "command": "editor.action.marker.next",
  "when": "editorFocus"
}
```
:::

#### テスト: 次のテスト エラーに移動

TODO:

:::details settings
```json
{
  "key": "alt+f8",
  "command": "testing.goToNextMessage",
  "when": "editorFocus && testing.isPeekVisible"
}
```
:::

### `Shift`+`Alt`+`F8`

#### 前の問題 (エラー、警告、情報) へ移動

エディタエリアにフォーカスしているタブ内に問題 (エラー、警告、情報) のあるとき、該当の箇所へ移動します。
複数の問題があるとき、連続で `Shift`+`Alt`+`F8` をタイプすると前の問題の箇所へ移動します。

:::details settings
```json
{
  "key": "shift+alt+f8",
  "command": "editor.action.marker.prev",
  "when": "editorFocus"
}
```
:::

#### テスト: 前のテスト エラーに移動

TODO:

:::details settings
```json
{
  "key": "shift+alt+f8",
  "command": "testing.goToPreviousMessage",
  "when": "editorFocus && testing.isPeekVisible"
}
```
:::

## F9

TODO:

### `F9`

#### デバッグ: ブレークポイントの切り替え

TODO:

:::details settings
```json
{
  "key": "f9",
  "command": "editor.debug.action.toggleBreakpoint",
  "when": "debuggersAvailable && editorTextFocus"
}
```
:::

### `Shift`+`F9`

#### Debug: インライン ブレークポイント

TODO:

:::details settings
```json
{
  "key": "shift+f9",
  "command": "editor.debug.action.toggleInlineBreakpoint",
  "when": "editorTextFocus"
}
```
:::

#### 基本設定: 設定のコンテキスト メニューの表示

設定ビューの設定項目にフォーカスしているとき、コンテキストメニューを表示します。

:::details settings
```json
{
  "key": "shift+f9",
  "command": "settings.action.showContextMenu",
  "when": "inSettingsEditor"
}
```
:::

### `Alt`+`F9`

#### 次のコメント スレッドに移動

TODO:

:::details settings
```json
{
  "key": "alt+f9",
  "command": "editor.action.nextCommentThreadAction",
  "when": "editorFocus"
}
```
:::

### `Shift`+`Alt`+`F9`

#### 前のコメント スレッドに移動する

TODO:

:::details settings
```json
{
  "key": "shift+alt+f9",
  "command": "editor.action.previousCommentThreadAction",
  "when": "editorFocus"
}
```
:::

## F10

TODO:

### `F10`

#### Debug: ステップ オーバー

TODO:

:::details settings
```json
{
  "key": "f10",
  "command": "workbench.action.debug.stepOver",
  "when": "debugState == 'stopped'"
}
```
:::

#### Debug: Start Debugging and Stop on Entry

TODO:

:::details settings
```json
{
  "key": "f10",
  "command": "extension.node-debug.startWithStopOnEntry",
  "when": "!inDebugMode && debugConfigurationType == 'node' || !inDebugMode && debugConfigurationType == 'pwa-extensionHost' || !inDebugMode && debugConfigurationType == 'pwa-node'"
}
```
:::

### `Shift`+`F10`

#### エディターのコンテキスト メニューの表示

コンテキストメニューを表示します。

:::details settings
```json
{
  "key": "shift+f10",
  "command": "editor.action.showContextMenu",
  "when": "textInputFocus"
}
```
:::

## F11

TODO:

### `F11`

#### 表示: 全画面表示の切り替え

VSCode の全画面表示の on / off を切り替えます。

:::details settings
```json
{
  "key": "f11",
  "command": "workbench.action.toggleFullScreen",
  "when": "!isIOS"
}
```
:::

#### Debug: ステップ インする

TODO:

:::details settings
```json
{
  "key": "f11",
  "command": "workbench.action.debug.stepInto",
  "when": "debugState != 'inactive'"
}
```
:::

#### Debug: Start Debugging and Stop on Entry

TODO:

:::details settings
```json
{
  "key": "f11",
  "command": "extension.node-debug.startWithStopOnEntry",
  "when": "!inDebugMode && activeViewlet == 'workbench.view.debug' && debugConfigurationType == 'node' || !inDebugMode && activeViewlet == 'workbench.view.debug' && debugConfigurationType == 'pwa-extensionHost' || !inDebugMode && activeViewlet == 'workbench.view.debug' && debugConfigurationType == 'pwa-node'"
}
```
:::

### `Shift`+`F11`

#### Debug: ステップ アウト

TODO:

:::details settings
```json
{
  "key": "shift+f11",
  "command": "workbench.action.debug.stepOut",
  "when": "debugState == 'stopped'"
}
```
:::

### `Ctrl`+`F11`

#### Debug: ターゲットにステップ イン

TODO:

:::details settings
```json
{
  "key": "ctrl+f11",
  "command": "workbench.action.debug.stepIntoTarget",
  "when": "inDebugMode && stepIntoTargetsSupported && debugState == 'stopped'"
}
```
:::

## F12

TODO:

### `F12`

#### goToNextReference

TODO:

:::details settings
```json
{
  "key": "f12",
  "command": "goToNextReference",
  "when": "inReferenceSearchEditor || referenceSearchVisible"
}
```
:::

#### 定義へ移動

エディタエリアのカーソル位置の、シンボルが定義されている箇所へ移動します。

:::details settings
```json
{
  "key": "f12",
  "command": "editor.action.revealDefinition",
  "when": "editorHasDefinitionProvider && editorTextFocus && !isInEmbeddedEditor"
}
```
:::

#### editor.gotoNextSymbolFromResult

TODO:

:::details settings
```json
{
  "key": "f12",
  "command": "editor.gotoNextSymbolFromResult",
  "when": "hasSymbols"
}
```
:::

### `Shift`+`F12`

#### goToPreviousReference

TODO:

:::details settings
```json
{
  "key": "shift+f12",
  "command": "goToPreviousReference",
  "when": "inReferenceSearchEditor || referenceSearchVisible"
}
```
:::

#### 参照へ移動

エディタエリアのカーソル位置の、シンボルを参照している箇所へ移動します。

:::details settings
```json
{
  "key": "shift+f12",
  "command": "editor.action.goToReferences",
  "when": "editorHasReferenceProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor"
}
```
:::

### `Ctrl`+`F12`

#### 実装へ移動

TODO:

:::details settings
```json
{
  "key": "ctrl+f12",
  "command": "editor.action.goToImplementation",
  "when": "editorHasImplementationProvider && editorTextFocus && !isInEmbeddedEditor"
}
```
:::

### `Alt`+`F12`

#### 定義をここに表示

エディタエリアのカーソル位置の、シンボルの定義をモーダルで表示します。

:::details settings
```json
{
  "key": "alt+f12",
  "command": "editor.action.peekDefinition",
  "when": "editorHasDefinitionProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor"
}
```
:::

### `Ctrl`+`Shift`+`F12`

#### 実装のピーク

TODO:

:::details settings
```json
{
  "key": "ctrl+shift+f12",
  "command": "editor.action.peekImplementation",
  "when": "editorHasImplementationProvider && editorTextFocus && !inReferenceSearchEditor && !isInEmbeddedEditor"
}
```
:::

### `Shift`+`Alt`+`F12`

#### 参照: すべての参照を検索

アクティビティバーの「References (参照)」(参照ビュー)を選択状態にして、参照ビューにエディタエリアのカーソル位置の、シンボルを参照している箇所の一覧を表示します。

:::details settings
```json
{
  "key": "shift+alt+f12",
  "command": "references-view.findReferences",
  "when": "editorHasReferenceProvider"
}
```
:::

### `Ctrl`+`K` `F12`

#### 定義を横に開く

エディタエリアのカーソル位置の、シンボルの定義のあるファイルを、新しいエディタグループを横に開いて表示します。

:::details settings
```json
{
  "key": "ctrl+k f12",
  "command": "editor.action.revealDefinitionAside",
  "when": "editorHasDefinitionProvider && editorTextFocus && !isInEmbeddedEditor"
}
```
:::