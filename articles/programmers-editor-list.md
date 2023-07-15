---
title: "最強のエディタはどれだ！！ (2022年版)"
emoji: "📝"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: ["エディタ", "VSCode", "vim", "emacs"]
published: true
---

IT エンジニアにとって欠かせない必須のツール「エディタ」。
様々な種類や書き味のエディタが公開されているので、2022 年 7 月時点で調査可能なエディタをひたすらリストアップしてみました。

この中から **最強のエディタ** 決めたいと思います！

以下、この記事の取扱説明として、

- テキストエディタ、IDE (統合開発環境)、クラウド開発環境、それぞれごちゃまぜにして「エディタ」として挙げさせていただいております。一応各エディタの欄にテーブル形式で種別などを掲載しましたので、参照ください。
- 比較表はアルファベット順、比較表より下はざっくりとカテゴライズした上で、各エディタの紹介を記載しております。
- なお、エディタごとにささやかな紹介文が書かれておりますが、多分に私個人の主観による偏った感想が含まれていますので、予めご容赦ください。
- また、情報に誤りが見つけられましたら、コメントにてご指摘いただけたら嬉しいです。

(※最下部に[まとめ](#まとめ) と [私にとっての最強のエディタ](#私にとっての最強のエディタ) 、あと[エディタイベントの宣伝](#宣伝) を書いたので、時間が無い方は先に御覧ください。)

## 比較表

| 名前                                        | 料金                    | UI                           | 動作 OS             | 開発言語                                                                                                                     | リリース                                                                                                                                                   | 最終アップデート                                                                                                                                           |
| ------------------------------------------- | ----------------------- | ---------------------------- | ------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| [Adobe Dreamweaver](#adobe-dreamweaver)     | 有料                    | GUI                          | Windows,macOS       | ?                                                                                                                            | 1997 年 12 月 ([Wikipedia](https://ja.wikipedia.org/wiki/Adobe_Dreamweaver) から引用)                                                                      | 2022 年 6 月 ([公式リリースノート](https://helpx.adobe.com/jp/dreamweaver/release-notes.html) から引用)                                                    |
| [amp](#amp)                                 | 無料                    | CUI                          |                     | Rust                                                                                                                         | 2018 年 1 月 30 日                                                                                                                                         | 2020 年 2 月 5 日                                                                                                                                          |
| [Android Studio](#android-studio)           | 無料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin                                                                                                                 | 2017 年 5 月 11 日 ([公式ダウンロードアーカイブ](https://developer.android.com/studio/archive?hl=ja) から引用)                                             | 2022 年 7 月 7 日 ([公式ダウンロードアーカイブ](https://developer.android.com/studio/archive?hl=ja) から引用)                                              |
| [AppCode](#appcode)                         | 有料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                             | 2018 年 11 月 23 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/objc/download/other.html) から引用)                                          | 2022 年 7 月 28 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/objc/download/other.html) から引用)                                           |
| [Aptana Studio](#aptana-studio)             | 無料                    | GUI                          | Windows,macOS,Linux | Java, JavaScript                                                                                                             |                                                                                                                                                            | 2018 年 9 月 17 日                                                                                                                                         |
| [Aquamacs](#aquamacs)                       | 無料                    | GUI                          | macOS               |                                                                                                                              |                                                                                                                                                            | 2021 年 12 月 29 日                                                                                                                                        |
| [Atom](#atom)                               | 無料                    | GUI                          | Windows,macOS,Linux | JavaScript                                                                                                                   | 2014 年 2 月 26 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Atom_(%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)>) から引用) | 2022 年 12 月 15 日 (予定)                                                                                                                                 |
| [Brackets](#brackets)                       | 無料                    | GUI                          | Windows,macOS,Linux | HTML, CSS, JavaScript ([Wikipedia](https://ja.wikipedia.org/wiki/Brackets) から引用)                                         | 2014 年 11 月 4 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Brackets) から引用)                                                                          | 2022 年 7 月 12 日                                                                                                                                         |
| [CLion](#clion)                             | 有料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                             | 2016 年 5 月 11 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/clion/download/other.html) から引用)                                          | 2022 年 7 月 27 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/clion/download/other.html) から引用)                                          |
| [Cloud9](#cloud9)                           | 有料                    | GUI                          | Windows,macOS,Linux | JavaScript                                                                                                                   | 2016 年 7 月 14 日                                                                                                                                         | -                                                                                                                                                          |
| [Cloud Shell](#cloud-shell)                 | 　有料                  | GUI (ブラウザ)               | Windows,macOS,Linux | ?                                                                                                                            | 2016 年 10 月                                                                                                                                              | -                                                                                                                                                          |
| [Coda (Nova)](#coda-nova)                   | 有料                    | GUI                          | macOS               |                                                                                                                              | 2007 年 4 月 23 日 ([Wikipedia](<https://en.wikipedia.org/wiki/Coda_(web_development_software)>) から引用)                                                 | 2020 年 11 月 5 日 ([Wikipedia](<https://en.wikipedia.org/wiki/Coda_(web_development_software)>) から引用)                                                 |
| [Codeanywhere](#codeanywhere)               | 有料                    | GUI                          | Windows,macOS,Linux | JavaScript                                                                                                                   | 2013 年 5 月 22 日 ([Wikipedia](https://en.wikipedia.org/wiki/Codeanywhere) から引用)                                                                      | -                                                                                                                                                          |
| [codenvy(Eclipse Che)](#codenvyeclipse-che) | 無料                    | GUI                          | Windows,macOS,Linux | Java                                                                                                                         | 2014 年 10 月 ([Wikipedia](https://en.wikipedia.org/wiki/Eclipse_Che) から引用)                                                                            | -                                                                                                                                                          |
| [Codelobster](#codelobster)                 | 有料                    | GUI                          | Windows,macOS,Linux | C++                                                                                                                          | -                                                                                                                                                          | 2023 年 2 月 9 日 ([Wikipedia](https://en.wikipedia.org/wiki/Codelobster) から引用)                                                                        |
| [Codespaces](#codespaces)                   | 有料                    | GUI (デスクトップ、ブラウザ) | Windows,macOS,Linux | ?                                                                                                                            | 2021 年 8 月 11 日 ([公式サイト](https://github.co.jp/features/codespaces) から引用)                                                                       | -                                                                                                                                                          |
| [CotEditor](#coteditor)                     | 無料                    | GUI                          | macOS               | Swift                                                                                                                        | 2009 年 5 月 1 日 ([Wikipedia](https://ja.wikipedia.org/wiki/CotEditor) から引用)                                                                          | 2022 年 7 月 30 日                                                                                                                                         |
| [Eclipse](#eclipse)                         | 無料                    | GUI                          | Windows,macOS,Linux | Java [Wikipedia](<https://ja.wikipedia.org/wiki/Eclipse_(%E7%B5%B1%E5%90%88%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83)>) から引用) | 2001 年 11 月 29 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Eclipse_(%E7%B5%B1%E5%90%88%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83)>) から引用)               | 2022 年 6 月 15 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Eclipse_(%E7%B5%B1%E5%90%88%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83)>) から引用)                |
| [Editor](#editor)                           | 無料                    | GUI                          | Windows,macOS,Linux | Go                                                                                                                           | 2020 年 1 月 3 日                                                                                                                                          | 2022 年 7 月 26 日                                                                                                                                         |
| [EmEditor](#emeditor)                       | 無料 (有料版もあり)     | GUI                          | Windows             |                                                                                                                              |                                                                                                                                                            | 2022 年 6 月 23 日　([公式ブログ](https://jp.emeditor.com/blog/) から引用)                                                                                 |
| [Espresso](#espresso)                       | 有料                    | GUI                          | macOS               |                                                                                                                              |                                                                                                                                                            |                                                                                                                                                            |
| [Geany](#geany)                             | 無料                    | GUI                          | Windows,macOS,Linux | C                                                                                                                            |                                                                                                                                                            | 2021 年 10 月 10 日                                                                                                                                        |
| [gedit](#gedit)                             | 無料                    | GUI                          | Windows,macOS,Linux | C                                                                                                                            |                                                                                                                                                            | 2022 年 7 月 29 日                                                                                                                                         |
| [GNU Emacs](#gnu-emacs)                     | 無料                    | CUI                          | Windows,macOS,Linux | C, Emacs Lisp                                                                                                                | 1985 年 3 月 20 日 ([Wikipedia](https://ja.wikipedia.org/wiki/GNU_Emacs) から引用)                                                                         | 2022 年 4 月 4 日 ([公式サイト](https://www.gnu.org/savannah-checkouts/gnu/emacs/emacs.html#Releases) から引用)                                            |
| [GoLand](#goland)                           | 有料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                             | 2018 年 11 月 23 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/go/download/other.html) から引用)                                            | 2022 年 7 月 28 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/go/download/other.html) から引用)                                             |
| [gPad](#gpad)                               | 無料                    | GUI                          | Windows             |                                                                                                                              |                                                                                                                                                            | 2020 年 12 月 31 日 ([公式サイト](https://mfactory.me/) から引用)                                                                                          |
| [Graviton](#graviton)                       | 無料                    | GUI                          | Windows,macOS,Linux | TypeScript, Rust                                                                                                             | 2018 年 12 月 28 日                                                                                                                                        | 2021 年 4 月 20 日                                                                                                                                         |
| [gvim](#vim--gvim)                          | 無料                    | GUI                          | Windows,Linux       | C                                                                                                                            | 1996 年 5 月 29 日 ([Vim, an open-source text editor](https://www.free-soft.org/FSM/english/issue01/vim.html) から引用)                                    | 2022-06-28 ([公式ニュースページ](https://www.vim.org/news/news.php) から引用)                                                                              |
| [Helix](#helix)                             | 無料                    | CUI                          | Windows,macOS,Linux | Rust                                                                                                                         | 2021 年 5 月 12 日                                                                                                                                         | 2022 年 5 月 29 日                                                                                                                                         |
| [IntelliJ IDEA](#intellij-idea)             | 有料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                             | 2001 年 1 月 ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                                                           | 2022 年 7 月 26 日 ([公式ダウンロードページ]　から引用)                                                                                                    |
| [Jedit(Jedit Ω)](#jeditjedit-ω)             | 有料                    | GUI                          | macOS               |                                                                                                                              | 2022 年 5 月 7 日 ([公式サイト](http://www.artman21.com/jp/))                                                                                              | 1995 年 ([Wikipedia](https://ja.wikipedia.org/wiki/Jedit) から引用)                                                                                        |
| [kakoune](#kakoune)                         | 無料                    | CUI                          | Windows,macOS,Linux | C++                                                                                                                          | 2018 年 4 月 13 日                                                                                                                                         | 2021 年 11 月 7 日                                                                                                                                         |
| [Kate](#kate)                               | 無料                    | GUI                          | Windows,macOS,Linux | C++                                                                                                                          |                                                                                                                                                            | 2022 年 7 月 24 日                                                                                                                                         |
| [Koding](#koding)                           | 有料                    | GUI                          | Windows,macOS,Linux | Go                                                                                                                           | 2012 年 1 月 16 日 ([Wikipedia](https://fr.wikipedia.org/wiki/Koding))                                                                                     | -                                                                                                                                                          |
| [Komodo Edit](#komodo-edit)                 | 無料                    | GUI                          | Windows,macOS,Linux | Python, C, JavaScript, HTML                                                                                                  | 2007 年 ([Wikipedia](https://en.wikipedia.org/wiki/Komodo_Edit) から引用)                                                                                  | 2020 年 2 月 10 日                                                                                                                                         |
| [Lapce](#lapce)                             | 無料                    | GUI                          | Windows,macOS,Linux | Rust                                                                                                                         | 2021 年 12 月 14 日                                                                                                                                        | 2022 年 7 月 15 日                                                                                                                                         |
| [Light Table](#light-table)                 | 無料                    | GUI                          | Windows,macOS,Linux | Clojure                                                                                                                      | 2012 年 4 月 12 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Light_Table) から引用)                                                                       | 2016 年 1 月 22 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Light_Table) から引用)                                                                       |
| [MacVim](#macvim)                           | 無料                    | GUI                          | macOS               |                                                                                                                              | 少なくとも 2008 年 8 月 10 日 には存在？ ([Vim Google group](https://groups.google.com/g/vim_announce/c/LIlnHdkogS8) から引用)                             | 2022 年 7 月 25 日                                                                                                                                         |
| [Mery](#mery)                               | 無料                    | GUI                          | Windows             | Delphi                                                                                                                       | 2008 年 4 月 8 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Mery) から引用)                                                                               | 2022 年 7 月 23 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Mery) から引用)                                                                              |
| [MinEd](#mined)                             | 無料                    | CUI                          | Windows,Linux       | C                                                                                                                            | 1992 年 7 月 ([Wikipedia](https://ja.wikipedia.org/wiki/MinEd) から引用)                                                                                   | 2015 年 3 月 30 日 ([Wikipedia](https://ja.wikipedia.org/wiki/MinEd) から引用)                                                                             |
| [nano](#nano)                               | 無料                    | CUI                          |                     | 　 C                                                                                                                         | 1999 年(pico) ([Wikipedia](<https://ja.wikipedia.org/wiki/Nano_(%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)>) から引用)      | 2022 年 7 月 27 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Nano_(%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)>) から引用) |
| [neovim](#neovim)                           | 無料                    | CUI/GUI                      | Windows,macOS,Linux | C                                                                                                                            | 2015 年 11 月 1 日 ([Wikipedia](<https://en.wikipedia.org/wiki/Vim_(text_editor)#Neovim>) から引用)                                                        | 2022 年 6 月 27 日                                                                                                                                         |
| [NetBeans](#netbeans)                       | 無料                    | GUI                          | Windows,macOS,Linux | Java ([Wikipedia](https://ja.wikipedia.org/wiki/NetBeans) から引用)                                                          | 1997 年 ([Wikipedia](https://ja.wikipedia.org/wiki/NetBeans) から引用)                                                                                     | 2022 年 6 月 16 日                                                                                                                                         |
| [Notepad++](#notepad)                       | 無料                    | GUI                          | Windows             | C++                                                                                                                          | 2003 年 11 月 24 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Notepad%2B%2B) から引用)                                                                    | 2022 年 7 月 16 日                                                                                                                                         |
| [nvi](#nvi)                                 | 無料                    | CUI                          |                     |                                                                                                                              | C                                                                                                                                                          | ?                                                                                                                                                          | 2007 年 11 月 18 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Nvi) から引用) |
| [Oracle JDeveloper](#oracle-jdeveloper)     | 無料                    | GUI                          | Windows,macOS,Linux | Java                                                                                                                         | 2005 年 ([Wikipedia](https://en.wikipedia.org/wiki/JDeveloper) から引用)                                                                                   | 2019 年 9 月 27 日 ([Wikipedia](https://en.wikipedia.org/wiki/JDeveloper) から引用)                                                                        |
| [PaizaCloud](#paizacloud)                   | 無料 (有料プランもあり) | GUI                          | Windows,macOS,Linux | ?                                                                                                                            | 2017 年 12 月 5 日 ([PR TIMES](https://prtimes.jp/main/html/rd/p/000000035.000012063.html) から引用)                                                       | -                                                                                                                                                          |
| [PhpStorm](#phpstorm)                       | 有料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                             | 2011 年 9 月 16 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/phpstorm/download/other.html) から引用)                                       | 2022 年 7 月 26 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/phpstorm/download/other.html) から引用)                                       |
| [PyCharm](#pycharm)                         | 有料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                             | 2011 年 1 月 18 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/pycharm/download/other.html) から引用)                                        | 2022 年 7 月 28 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/pycharm/download/other.html) から引用)                                        |
| [PyScripter](#pyscripter)                   | 無料                    | GUI                          | Windows             | Pascal                                                                                                                       |                                                                                                                                                            | 2021 年 10 月 21 日                                                                                                                                        |
| [Qt Creator](#qt-creator)                   | 無料                    | GUI                          | Windows,macOS,Linux | C++ ([Wikipedia](https://en.wikipedia.org/wiki/Qt_Creator) から引用)                                                         | 2007 年 ([Wikipedia](https://en.wikipedia.org/wiki/Qt_Creator) から引用)                                                                                   | 2022 年 7 月 20 日 ([Wikipedia](https://en.wikipedia.org/wiki/Qt_Creator) から引用)                                                                        |
| [Rider](#rider)                             | 有料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                             | 2017 年 8 月 3 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/rider/download/other.html) から引用)                                           | 2022 年 6 月 3 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/rider/download/other.html) から引用)                                           |
| [RubyMine](#rubymine)                       | 有料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                             | 2012 年 4 月 19 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/ruby/download/other.html) から引用)                                           | 2022 年 7 月 21 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/ruby/download/other.html) から引用)                                           |
| [SciTE](#scite)                             | 無料                    | GUI                          | Windows,macOS,Linux | C++ ([Wikipedia](https://ja.wikipedia.org/wiki/SciTE)) から引用                                                              | 2000 年 3 月 8 日                                                                                                                                          | 2022 年 7 月 8 日                                                                                                                                          |
| [Scribes](#scribes)                         | 無料                    | GUI                          | Linux               | Python ([Wikipedia](https://ja.wikipedia.org/wiki/Scribes)) から引用                                                         |                                                                                                                                                            |                                                                                                                                                            |
| [spacemacs](#spacemacs)                     | 無料                    | GUI                          | Windows,macOS,Linux | Emacs Lisp ([Wikipedia](https://en.wikipedia.org/wiki/Spacemacs) から引用)                                                   | 2014 年 10 月 30 日 ([Wikipedia](https://en.wikipedia.org/wiki/Spacemacs) から引用)                                                                        | 2018 年 1 月 25 日                                                                                                                                         |
| [Sublime Text](#sublime-text)               | 無料                    | GUI                          | Windows,macOS,Linux | C++, Python ([Wikipedia](https://ja.wikipedia.org/wiki/Sublime_Text)) から引用                                               | 2008 年 1 月 18 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Sublime_Text) から引用)                                                                      | 2021 年 12 月 21 日                                                                                                                                        |
| [TeraPad](#terapad)                         | 無料                    | GUI                          | Windows             | ?                                                                                                                            | 1999 年 4 月 19 日 ([Wikipedia](https://ja.wikipedia.org/wiki/TeraPad) から引用)                                                                           | 2012 年 11 月 12 日 ([Wikipedia](https://ja.wikipedia.org/wiki/TeraPad) から引用)                                                                          |
| [TextPad](#textpad)                         | 有料                    | GUI                          | Windows             |                                                                                                                              | 1992 年 ([Wikipedia](https://ja.wikipedia.org/wiki/TextPad) から引用)                                                                                      | 2017 年 3 月 7 日 ([Wikipedia](https://ja.wikipedia.org/wiki/TextPad) から引用)                                                                            |
| [Unity](#unity)                             | 有料 (無料プランもあり) | GUI                          | Windows,macOS,Linux | C, C++                                                                                                                       | 2005 年 6 月 8 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Unity_(%E3%82%B2%E3%83%BC%E3%83%A0%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%B3)>) から引用)          | 2022 年 5 月 9 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Unity_(%E3%82%B2%E3%83%BC%E3%83%A0%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%B3)>) から引用)          |
| [vim](#vim--gvim)                           | 無料                    | CUI                          | Windows,macOS,Linux | C                                                                                                                            | 1991 年 11 月 2 日 ([Vim-history リポジトリ README](https://github.com/vim/vim-history) から引用)                                                          | 2022 年 6 月 28 日 ([公式ニュースページ](https://www.vim.org/news/news.php) から引用)                                                                      |
| [Visual Studio Code](#visual-studio-code)   | 無料                    | GUI                          | Windows,macOS,Linux | TypeScript                                                                                                                   | 2015 年 4 月 29 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Visual_Studio_Code) から引用)                                                                | 2022 年 7 月 19 日                                                                                                                                         |
| [Visual Studio](#visual-studio)             | 無料                    | GUI                          | Windows             | ?                                                                                                                            | 1991 年 ([Wikipedia](https://ja.wikipedia.org/wiki/Visual_Basic) から引用)                                                                                 | 2022 年 7 月 26 日 ([公式リリース](https://docs.microsoft.com/ja-jp/visualstudio/releases/2022/release-notes-preview) から引用)                            |
| [ViVi](#vivi)                               | 有料                    | GUI                          | Windows             | C++                                                                                                                          | 2001 年 6 月 1 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/ViVi_(%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)>) から引用)                                      | 2020 年 11 月 21 日                                                                                                                                        |
| [WebStorm](#webstorm)                       | 有料                    | GUI                          | Windows,macOS,Linux | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                             | 2010 年 8 月 8 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/webstorm/download/other.html) から引用)                                        | 2022 年 7 月 25 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/webstorm/download/other.html) から引用)                                       |
| [Xcode](#xcode)                             | 無料                    | GUI                          | macOS               | ?                                                                                                                            | 2003 年 10 月 24 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Xcode) から引用)                                                                            | 2022 年 6 月 2 日                                                                                                                                          |
| [Xi](#xi)                                   | 無料                    | CUI,GUI                      | Windows,macOS,Linux | Rust                                                                                                                         | 2017 年 4 月 11 日                                                                                                                                         | 2019 年 6 月 29 日                                                                                                                                         |
| [xyzzy](#xyzzy)                             | 無料                    | GUI                          | Windows             | ?                                                                                                                            | ?                                                                                                                                                          | 2005 年 12 月 7 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Xyzzy) から引用)                                                                             |
| [zed](#zed)                                 | ?                       | GUI                          | ?                   | Rust                                                                                                                         | 未公開                                                                                                                                                     | 未公開                                                                                                                                                     |
| [サクラエディタ](#サクラエディタ)           | 無料                    | GUI                          | Windows             | C++                                                                                                                          | 2000 年 ([Wikipedia](https://ja.wikipedia.org/wiki/%E3%82%B5%E3%82%AF%E3%83%A9%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF) から引用)                              | 2020 年 5 月 30 日                                                                                                                                         |
| メモ帳                                      | 無料                    | GUI                          | Windows             | ?                                                                                                                            | 1985 年 11 月 20 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Microsoft_Windows_1.0) から引用)                                                            | 2021 年 10 月 5 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Microsoft_Windows_11) から引用)                                                              |
| [秀丸エディタ](#秀丸エディタ)               | 有料                    | GUI                          | Windows             |                                                                                                                              | 1995 年 ([Wikipedia](https://ja.wikipedia.org/wiki/%E7%A7%80%E4%B8%B8%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF) から引用)                                       | 2022 年 7 月 21 日 ([公式サイト](http://hide.maruo.co.jp/software/hidemaru.html) から引用)                                                                 |

※最終アップデート日は 2022 年 7 月 29 日現在の調査時

## vi / vi クローン

### vim / gvim

https://www.vim.org/

言わずと知れた CUI エディタの大御所「ヴィム」。

> Vim - the ubiquitous text editor
> Vim is a highly configurable text editor built to make creating and changing any kind of text very efficient. It is included as "vi" with most UNIX systems and with Apple OS X.
>
> Vim is rock stable and is continuously being developed to become even better. Among its features are:
>
> - persistent, multi-level undo tree
> - extensive plugin system
> - support for hundreds of programming languages and file formats
> - powerful search and replace
> - integrates with many tools
>
> [公式サイト](https://www.vim.org/) から引用

「ヴィムはユビキタスなテキストエディタです。」
"「ユビキタス　 → 　普遍的」なエディタ" の説明通り、UNIX/Linux/macOS 　に標準搭載している CUI で動作するエディタで、
gvim は GUI で動作する vim のことを指します。
gvim は Windows 版の　 exe ファイルとインストーラー、Linux 版のパッケージがあります。
macOS で GUI の vim を使用する場合は、[MacVim](#macvim) が良いでしょう。

> Vim はオランダ人のプログラマー、ブラム・モールナールによって Amiga 向けに開発された。のちに Windows を含むさまざまな環境に移植され、特に Unix 系オペレーティングシステム (OS) では Emacs と並んで広く使用されているテキストエディタとなっている。
>
> [Wikipedia](https://ja.wikipedia.org/wiki/Vim) から引用

とある通り、後述する [GNU Emacs](#gnu-emacs) とよく比較されます。
つい先日までは、「エディタの宗教戦争」と言えば "Vim" VS "Emacs" の機能差や思想の論争のことを指すことが多かったように思えますが、
近年は様々なエディタの台頭により、あまり聞かなくなりました。（よね？）

| 項目名           |                                                                                                    |
| ---------------- | -------------------------------------------------------------------------------------------------- |
| 読み方           | ビム                                                                                               |
| 公式サイト       | https://www.vim.org/                                                                               |
| 公式リポジトリ   | https://github.com/vim/vim                                                                         |
| Wikipedia        | https://ja.wikipedia.org/wiki/Vim                                                                  |
| 料金             | 無料                                                                                               |
| 種別             | CUI / GUI テキストエディタ                                                                         |
| 対応 OS          | Windows,macOS,Linux                                                                                |
| 開発言語         | C                                                                                                  |
| 初版リリース     | 1991 年 11 月 2 日 ([Vim-history リポジトリ README](https://github.com/vim/vim-history) から引用)) |
| 最終アップデート | 2022 年 6 月 28 日 ([公式ニュースページ](https://www.vim.org/news/news.php) から引用)              |

### neovim

https://neovim.io/

Vim クローン界の過激派。(※個人の感想です。捉え方には個人差があります。)

> hyperextensible Vim-based text editor
>
> [公式サイト](https://neovim.io/) から引用

(Vim 本家に比べて) 利便性や快適さを求めて、新しい機能をいち早く取り込み、あったほうがいいよね？という機能や設定をデフォルトで有効にしている印象のあるエディタです。

ちょうどこの記事を書いていたら、dein, deoplete などの Vim プラグインの作者「暗黒美無王」(@ShougoMatsu) さんの Neovim への言及があったので、参考まで。
https://twitter.com/ShougoMatsu/status/1555708916105093120?s=20&t=mtSCzkH-YjCPNHpgM1BtCA

| 項目名           |                                                                                                     |
| ---------------- | --------------------------------------------------------------------------------------------------- |
| 読み方           | ネオビム                                                                                            |
| 公式サイト       | https://neovim.io/                                                                                  |
| 公式リポジトリ   | https://github.com/neovim/neovim                                                                    |
| Wikipedia        | https://en.wikipedia.org/wiki/Vim_(text_editor)#Neovim (英語)                                       |
| 料金             | 無料                                                                                                |
| 種別             | CUI / GUI テキストエディタ                                                                          |
| 対応 OS          | Windows,macOS,Linux                                                                                 |
| 開発言語         | C ([Wikipedia](<https://en.wikipedia.org/wiki/Vim_(text_editor)#Neovim>) から引用)                  |
| 初版リリース     | 2015 年 11 月 1 日 ([Wikipedia](<https://en.wikipedia.org/wiki/Vim_(text_editor)#Neovim>) から引用) |
| 最終アップデート | 2022 年 6 月 27 日                                                                                  |

### MacVim

https://macvim-dev.github.io/macvim/

> Vim - the text editor - for macOS
>
> [公式サイト](https://macvim-dev.github.io/macvim/) から引用

macOS で Vim を使いたいなら。
マカーのときはかなりお世話になりました。（現在は Windows ユーザー)

gvim と機能的にはほとんど一緒です。
差分があるとしたらキーバインドが mac 仕様になっていることくらい？

| 項目名           |                                                                                                                                |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| 読み方           | マックビム                                                                                                                     |
| 公式サイト       | https://macvim-dev.github.io/macvim/                                                                                           |
| 公式リポジトリ   | https://github.com/vim/vim                                                                                                     |
| Wikipedia        | https://ja.wikipedia.org/wiki/Vim                                                                                              |
| 料金             | 無料                                                                                                                           |
| 種別             | CUI テキストエディタ                                                                                                           |
| 対応 OS          | macOS                                                                                                                          |
| 開発言語         | C？                                                                                                                            |
| 初版リリース     | 少なくとも 2008 年 8 月 10 日 には存在？ ([Vim Google group](https://groups.google.com/g/vim_announce/c/LIlnHdkogS8) から引用) |
| 最終アップデート | 2022 年 7 月 25 日                                                                                                             |

### nvi

https://sites.google.com/a/bostic.com/keithbostic/vi/

すみません。よくわかりません。（Siri 風）

> Nvi is an implementation of the ex/vi text editor originally distributed as part of the Fourth Berkeley Software Distribution (4BSD), by the University of California, Berkeley. The source code to nvi is freely available, and nvi may be freely redistributed.
>
> [公式サイト](https://sites.google.com/a/bostic.com/keithbostic/vi/) から引用

今回いろいろなエディタを調べて掘り下げていく中で知ったので、本当に初見で触ったこともありません…
とりあえず古そうな印象です…

| 項目名           |                                                                               |
| ---------------- | ----------------------------------------------------------------------------- |
| 読み方           | エヌブイアイ                                                                  |
| 公式サイト       | https://sites.google.com/a/bostic.com/keithbostic/vi/                         |
| 公式リポジトリ   | git://repo.or.cz/nvi.git                                                      |
| Wikipedia        | https://ja.wikipedia.org/wiki/Nvi                                             |
| 料金             | 無料                                                                          |
| 種別             | CUI テキストエディタ                                                          |
| 対応 OS          | Linux                                                                         |
| 開発言語         | C                                                                             |
| 初版リリース     | ？                                                                            |
| 最終アップデート | 2007 年 11 月 18 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Nvi) から引用) |

### GNU Emacs

https://www.gnu.org/software/emacs/

> An extensible, customizable, free/libre text editor — and more.
>
> At its core is an interpreter for Emacs Lisp, a dialect of the Lisp programming language with extensions to support text editing.
>
> [公式サイト](https://www.gnu.org/software/emacs/)から引用

CUI エディタ界の最古参。(のはず。ed とか ex のほうが先かもしれないけど)
宗教戦争の二大宗派の一つ。

Emacs Lisp という (List という言語の Emacs 向けの方言) 関数型言語でガンガンカスタマイズしていくのが Emacs 流、という印象。
「Emacs は OS」と呼ばれるくらい、エディタ内でなんでもできるらしい。
私は Vim 宗派だったので、あまり詳しくありません…

| 項目名           |                                                                                                                 |
| ---------------- | --------------------------------------------------------------------------------------------------------------- |
| 読み方           | グヌー イーマックス                                                                                             |
| 公式サイト       | https://www.gnu.org/software/emacs/                                                                             |
| 公式リポジトリ   | https://git.savannah.gnu.org/cgit/emacs.git                                                                     |
| Wikipedia        | https://ja.wikipedia.org/wiki/GNU_Emacs                                                                         |
| 料金             | 無料                                                                                                            |
| 種別             | CUI テキストエディタ                                                                                            |
| 対応 OS          | Windows,macOS,Linux                                                                                             |
| 開発言語         | C, Emacs Lisp                                                                                                   |
| 初版リリース     | 1985 年 3 月 20 日 ([Wikipedia](https://ja.wikipedia.org/wiki/GNU_Emacs) から引用)                              |
| 最終アップデート | 2022 年 4 月 4 日 ([公式サイト](https://www.gnu.org/savannah-checkouts/gnu/emacs/emacs.html#Releases) から引用) |

### spacemacs

https://www.spacemacs.org/

> A community-driven Emacs distribution
> The best editor is neither Emacs nor Vim, it's Emacs and Vim!
>
> [公式サイト](https://www.spacemacs.org/) から引用

「最高のエディタは Emacs でも Vim でもない、Emacs と Vim だ!」

> Spacemacs は Emacs をベースに Vim のキーバインドを組み合わせて作られた、拡張性・カスタマイズ性の高いテキストエディタです。プロジェクトの目標は Vim と Emacs エディタそれぞれから長所を抽出して統合することです。Spacemacs ディストリビューションはコミュニティ主導の Emacs 設定を元にしています。デフォルトの Emacs の挙動を拡張しており大量の追加機能が存在します。
>
> [ArchWiki](https://wiki.archlinux.jp/index.php/Spacemacs) から引用

使ってみたくなる見た目をしていて、良いとこ取りをしているので、使いこなしたら最強感のあるエディタ！

ちなみに Vim 派だった私が Emacs に触れてみようと思って一度だけインストールしたことがあります。
が、、結局長所を体感できないままひっそりとアンインストールしてしまいました。。
ゴリゴリに使い倒したら離れられなくなるんだと思います！多分‥

| 項目名           |                                                                                     |
| ---------------- | ----------------------------------------------------------------------------------- |
| 読み方           | スペースマックス                                                                    |
| 公式サイト       | https://www.spacemacs.org/                                                          |
| 公式リポジトリ   | https://github.com/syl20bnr/spacemacs                                               |
| Wikipedia        | https://ja.wikipedia.org/wiki/Spacemacs                                             |
| 料金             | 無料                                                                                |
| 種別             | CUI テキストエディタ                                                                |
| 対応 OS          | Windows,macOS,Linux                                                                 |
| 開発言語         | Emacs Lisp ([Wikipedia](https://en.wikipedia.org/wiki/Spacemacs) から引用)          |
| 初版リリース     | 2014 年 10 月 30 日 ([Wikipedia](https://en.wikipedia.org/wiki/Spacemacs) から引用) |
| 最終アップデート | 2018 年 1 月 25 日                                                                  |

## CUI

### nano

https://www.nano-editor.org/

`$GIT_EDITOR` を設定していないとデフォルトで出てくる **アレ** です。
私はヘビーユーザーになったことはありませんが、実際ヘビーに使ったら便利なものなんでしょうか‥？
未だに nano エディタが立ち上がってしまったら、都度ググらないと閉じられないくらい、若干の恐怖感があります…

| 項目名           |                                                                                                                                                            |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 読み方           | ナノ                                                                                                                                                       |
| 公式サイト       | https://www.nano-editor.org/                                                                                                                               |
| 公式リポジトリ   | https://github.com/madnight/nano                                                                                                                           |
| Wikipedia        | https://ja.wikipedia.org/wiki/Nano_(%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)                                              |
| 料金             | 無料                                                                                                                                                       |
| 種別             | CUI テキストエディタ                                                                                                                                       |
| 対応 OS          | Windows,Linux                                                                                                                                              |
| 開発言語         | C                                                                                                                                                          |
| 初版リリース     | 1999 年(pico) ([Wikipedia](<https://ja.wikipedia.org/wiki/Nano_(%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)>) から引用)      |
| 最終アップデート | 2022 年 7 月 27 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Nano_(%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)>) から引用) |

### MinEd

https://sourceforge.net/projects/mined/

> Text editor with extensive Unicode and CJK support. Convenient and efficient features for editing of plain text documents, programs, HTML etc. User-friendly interface, mouse control and menus. Runs in a text-mode environment like xterm or mintty.
>
> [SourceForge 公式サイト](https://sourceforge.net/projects/mined/) から引用

> Unicode, CJK を幅広くサポート

最近は OS や ライブラリによって文字コードの面で気にすることがかなり減りましたが、数年前まではわりと文字コードのサポートはエディタを選ぶ材料だったような気がします。

> MinEd は広範な Unicode と CJK をサポートしターミナルで動作するテキストエディタ。Unix、Linux、Windows 及び DOS システムなどで利用可能である。
>
> [Wikipedia](https://ja.wikipedia.org/wiki/MinEd) から引用

Unix, Linux で使えるなら macOS でも行けそう。

| 項目名           |                                                                                |
| ---------------- | ------------------------------------------------------------------------------ |
| 読み方           | マインド？                                                                     |
| 公式サイト       | https://sourceforge.net/projects/mined/                                        |
| 公式リポジトリ   | -                                                                              |
| Wikipedia        | https://ja.wikipedia.org/wiki/MinEd                                            |
| 料金             | 無料                                                                           |
| 種別             | CUI テキストエディタ                                                           |
| 対応 OS          | Windows,Linux                                                                  |
| 開発言語         | C                                                                              |
| 初版リリース     | 1992 年 7 月 ([Wikipedia](https://ja.wikipedia.org/wiki/MinEd) から引用)       |
| 最終アップデート | 2015 年 3 月 30 日 ([Wikipedia](https://ja.wikipedia.org/wiki/MinEd) から引用) |

### kakoune

http://kakoune.org/

> Modal editor · Faster as in fewer keystrokes · Multiple selections · Orthogonal design
>
> [公式サイト](http://kakoune.org/) から引用

Vim の影響を強く受けていて、モード切り替えのある軽い CUI エディタ。
あくまで Vim クローンというわけでは無さそうです。
リリースを見ると、最近は開発があまりされていなそう？

| 項目名           |                                  |
| ---------------- | -------------------------------- |
| 読み方           | カクーン？                       |
| 公式サイト       | http://kakoune.org/              |
| 公式リポジトリ   | https://github.com/mawww/kakoune |
| Wikipedia        | -                                |
| 料金             | 無料                             |
| 種別             | CUI テキストエディタ             |
| 対応 OS          | Windows,macOS,Linux              |
| 開発言語         | C++                              |
| 初版リリース     | 2018 年 4 月 13 日               |
| 最終アップデート | 2021 年 11 月 7 日               |

### Helix

https://helix-editor.com/

> A post-modern text editor.
>
> [公式サイト](https://helix-editor.com/) かｒ引用

> A kakoune / neovim inspired editor, written in Rust.
>
> [公式リポジトリ](https://github.com/helix-editor/helix) から引用

kakoune、neovim に影響を受けた、Rust 製の CUI エディタ。
Rust の Slack チャンネルで知ったような気がします。
完成度は高くて普通に使えましたが、Vim があるから Vim でいいや…となってあんまり使い込まずのままです。
今でも活発に開発がされているようです。

| 項目名           |                                       |
| ---------------- | ------------------------------------- |
| 読み方           | ヘリックス                            |
| 公式サイト       | https://helix-editor.com/             |
| 公式リポジトリ   | https://github.com/helix-editor/helix |
| Wikipedia        | -                                     |
| 料金             | 無料                                  |
| 種別             | CUI テキストエディタ                  |
| 対応 OS          | Windows,macOS,Linux                   |
| 開発言語         | Rust                                  |
| 初版リリース     | 2021 年 5 月 12 日                    |
| 最終アップデート | 2022 年 5 月 29 日                    |

### amp

https://amp.rs/

> Amp: A text editor for your terminal.
>
> Heavily inspired by Vi/Vim. Amp aims to take the core interaction model of Vim, simplify it, and bundle in the essential features required for a modern text editor.
> Written with ❤️ in Rust.
>
> [公式リポジトリ](https://github.com/jmacdonald/amp) から引用

こちらも Vim の影響を受けている Rust 製の CUI エディタ。
Vimmer が Rust を覚えると、リライトしてみたくなるんですかねー？
という私も確かに Rust で書き直してみたい衝動は一時期ありましたｗ

最後のリリースが 2020 年 2 月で、最後のコミットも 2021 年 11 月なので、今は活発とは言えない雰囲気。

| 項目名           |                                   |
| ---------------- | --------------------------------- |
| 読み方           | アンプ                            |
| 公式サイト       | https://amp.rs/                   |
| 公式リポジトリ   | https://github.com/jmacdonald/amp |
| Wikipedia        | -                                 |
| 料金             | 無料                              |
| 種別             | CUI テキストエディタ              |
| 対応 OS          | Windows,macOS,Linux               |
| 開発言語         | Rust                              |
| 初版リリース     | 2018 年 1 月 30 日                |
| 最終アップデート | 2020 年 2 月 5 日                 |

## Windows 専用

### 秀丸エディタ

https://hide.maruo.co.jp/software/hidemaru.html

Windows のエディタと言えばこれ！メモ帳か秀丸か！というくらい古くから有名なエディタ。
昔から機能は豊富で、正規表現検索機能で正規表現を練習してましたｗ

> 無料でお試し利用できますが、一定期間以上ご利用いただく場合はライセンスを購入いただく必要があります。
>
> [公式サイト](https://hide.maruo.co.jp/software/hidemaru.html) から引用

インストールして使ってみるぶんには無料でできます。
一定期間がどれくらいの期間なのか覚えていませんが、ライセンス購入のポップアップが出たような気がします。
購入する価値のある良いエディタです。

2022 年現在でも頻繁にアップデートがされていて、今後もしばらくは安泰？

| 項目名           |                                                                                                                      |
| ---------------- | -------------------------------------------------------------------------------------------------------------------- |
| 読み方           | ヒデマルエディタ                                                                                                     |
| 公式サイト       | https://hide.maruo.co.jp/software/hidemaru.html                                                                      |
| 公式リポジトリ   | -                                                                                                                    |
| Wikipedia        | https://ja.wikipedia.org/wiki/%E7%A7%80%E4%B8%B8%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF                                 |
| 料金             | 有料                                                                                                                 |
| 種別             | GUI テキストエディタ                                                                                                 |
| 対応 OS          | Windows                                                                                                              |
| 開発言語         | C++                                                                                                                  |
| 初版リリース     | 1995 年 ([Wikipedia](https://ja.wikipedia.org/wiki/%E7%A7%80%E4%B8%B8%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF) から引用) |
| 最終アップデート | 2022 年 7 月 21 日 ([公式サイト](http://hide.maruo.co.jp/software/hidemaru.html) から引用                            |

### サクラエディタ

https://sakura-editor.github.io/

2000 年から公開されている、わりと知名度の高い Windows のエディタ。
最近は非エンジニアの間で、CSV ビューワとしての知名度も上がって来ている様子を感じています。(私も Excel 代わりに使ってます)
最近のテキストエディタではあまり見かけなくなりましたが、秀丸エディタ・TeraPad、xyzzy にも搭載されている「ルーラー」機能を見るたび、「あぁ、今私は　 Windows を使ってるんだ！」と強く感じさせてくれます。

| 項目名           |                                                                                                                               |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| 読み方           | サクラエディタ                                                                                                                |
| 公式サイト       | https://sakura-editor.github.io/                                                                                              |
| 公式リポジトリ   | https://github.com/sakura-editor/sakura                                                                                       |
| Wikipedia        | https://ja.wikipedia.org/wiki/%E3%82%B5%E3%82%AF%E3%83%A9%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF                                 |
| 料金             | 無料                                                                                                                          |
| 種別             | GUI テキストエディタ                                                                                                          |
| 対応 OS          | Windows                                                                                                                       |
| 開発言語         | C++                                                                                                                           |
| 初版リリース     | 2000 年 ([Wikipedia](https://ja.wikipedia.org/wiki/%E3%82%B5%E3%82%AF%E3%83%A9%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF) から引用) |
| 最終アップデート | 2020 年 5 月 30 日                                                                                                            |

### TeraPad

https://tera-net.com/library/tpad.html

TeraPad も、秀丸エディタ・サクラエディタと同じくらい昔から有名です。
秀丸エディタ・サクラエディタと同じくらい強力な各種機能のサポートがあるイメージではあるものの、個人的には TeraPad 特有の強みがわからないため、ちゃんと使い続けたことはないです (ごめんなさい)
ただ、TeraTerm はかなり使いました！と弁解するつもりでしたが、TeraPad と TeraTerm の作者は別の方でした‥

| 項目名           |                                                                                   |
| ---------------- | --------------------------------------------------------------------------------- |
| 読み方           | テラパッド                                                                        |
| 公式サイト       | https://tera-net.com/library/tpad.html                                            |
| 公式リポジトリ   | -                                                                                 |
| Wikipedia        | https://ja.wikipedia.org/wiki/TeraPad                                             |
| 料金             | 無料                                                                              |
| 種別             | GUI テキストエディタ                                                              |
| 対応 OS          | Windows                                                                           |
| 開発言語         | ？                                                                                |
| 初版リリース     | 1999 年 4 月 19 日 ([Wikipedia](https://ja.wikipedia.org/wiki/TeraPad) から引用)  |
| 最終アップデート | 2012 年 11 月 12 日 ([Wikipedia](https://ja.wikipedia.org/wiki/TeraPad) から引用) |

### xyzzy

https://xyzzy-022.github.io/

> xyzzy は 亀井哲弥氏 よって開発された Emacs ライクなテキストエディタです。 Common Lisp にほぼ準拠した言語で拡張可能であり、多くの機能が Lisp によって実装されています。
>
> [公式サイト](https://xyzzy-022.github.io/) から引用

Windows のエディタでは珍しい Emacs ライクなエディタです。
通常の Emacs との違いは「Common Lisp」にほぼ準拠している点でしょうか。
読み方が難しいですが、[Wikipedia](https://ja.wikipedia.org/wiki/Xyzzy) によると公式の読み方はないそうです。
はるか昔、「クサイジジイ」と呼ぶというなにかの記事を読んだ記憶があるのですが、あれは夢だったんでしょうか…

> - 使いやすい 2 画面ファイラー
> - 複素数や「人生、宇宙、すべての答え」を計算できる 電卓
> - COM・FFI (Foreign Function Interface; DLL 呼び出し) による他の Windows プログラムの制御
> - Twitter クライアント、2ch クライアント、五目並べなどの暇つぶしツール
> - 軽快な動作
> - その他いろいろ
>
> [公式サイト](https://xyzzy-022.github.io/) から引用

「人生、宇宙、すべての答え」、みなさんはご存知ですか？

| 項目名           |                                                                                |
| ---------------- | ------------------------------------------------------------------------------ |
| 読み方           | エックスワイゼットゼットワイ                                                   |
| 公式サイト       | https://xyzzy-022.github.io/                                                   |
| 公式リポジトリ   | https://github.com/xyzzy-022/xyzzy                                             |
| Wikipedia        | https://ja.wikipedia.org/wiki/Xyzzy                                            |
| 料金             | 無料                                                                           |
| 種別             | GUI テキストエディタ                                                           |
| 対応 OS          | Windows                                                                        |
| 開発言語         | ？                                                                             |
| 初版リリース     | ？                                                                             |
| 最終アップデート | 2005 年 12 月 7 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Xyzzy) から引用) |

### Notepad++

https://notepad-plus-plus.org/

> Notepad++ is a free (as in “free speech” and also as in “free beer”) source code editor and Notepad replacement that supports several languages. Running in the MS Windows environment, its use is governed by GNU General Public License.
>
> [公式サイト](https://notepad-plus-plus.org/) から引用

「メモ帳の代用品」とは言うものの、本家に比べてかなりの高機能です。
蛇足ですが、私が注目したのは、過去のリリースバージョンのネーミングです。
わりと政治的なメッセージが込められたサブタイトルが命名されているように感じます。
直近のリリースは「Happy」「Unhappy」とかわいいネーミングで、気になってインストールしてしまいました。
どちらも普通の Notepad++ でしたｗ
(どうやら不具合による払い戻しに関するユーザー目線の感情をサブタイトルにしているようです)

| 項目名           |                                                                                         |
| ---------------- | --------------------------------------------------------------------------------------- |
| 読み方           | ノートパッドプラスプラス                                                                |
| 公式サイト       | https://notepad-plus-plus.org/                                                          |
| 公式リポジトリ   | https://github.com/notepad-plus-plus/notepad-plus-plus                                  |
| Wikipedia        | https://ja.wikipedia.org/wiki/Notepad%2B%2B                                             |
| 料金             | 無料                                                                                    |
| 種別             | GUI テキストエディタ                                                                    |
| 対応 OS          | Windows                                                                                 |
| 開発言語         | C++                                                                                     |
| 初版リリース     | 2003 年 11 月 24 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Notepad%2B%2B) から引用) |
| 最終アップデート | 2022 年 7 月 16 日                                                                      |

### Mery

https://www.haijin-boys.com/wiki/%E3%83%A1%E3%82%A4%E3%83%B3%E3%83%9A%E3%83%BC%E3%82%B8

> Mery はシンプルなテキストエディターです。Mery では日記、恋文、新聞記事、ソースコードなどのあらゆるテキスト文書を簡単に編集することができます。また、HTML、Java、PHP、SQL などの様々なプログラミング言語の色分け表示も可能です。
>
> [公式サイト](https://www.haijin-boys.com/wiki/%E3%83%A1%E3%82%A4%E3%83%B3%E3%83%9A%E3%83%BC%E3%82%B8) から引用

シンプルなプロダクト説明にグッときます。
テキストエディタで「恋文」…書いたことあるかなぁ…ありそう…

| 項目名           |                                                                                         |
| ---------------- | --------------------------------------------------------------------------------------- |
| 読み方           | メリー                                                                                  |
| 公式サイト       | https://www.haijin-boys.com/wiki/%E3%83%A1%E3%82%A4%E3%83%B3%E3%83%9A%E3%83%BC%E3%82%B8 |
| 公式リポジトリ   | -                                                                                       |
| Wikipedia        | https://ja.wikipedia.org/wiki/Mery                                                      |
| 料金             | 無料                                                                                    |
| 種別             | GUI テキストエディタ                                                                    |
| 対応 OS          | Windows                                                                                 |
| 開発言語         | Delphi                                                                                  |
| 初版リリース     | 2008 年 4 月 8 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Mery) から引用)            |
| 最終アップデート | 2022 年 7 月 23 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Mery) から引用)           |

### TextPad

https://www.textpad.com/ja/home

### gPad

https://mfactory.me/

> ・素早く起動しテキストを開く
> ・マウスジェスチャーでタブ操作
> ・スキン切り替えで気分転換
> ・エクスプローラパネルでファイルを探す
> ・CSV ファイルも見やすく表示
>
> [公式サイト](https://mfactory.me/) から引用

「マウスジェスチャーでタブ操作」はレアな特徴ですね！
gPad はタブ操作のみですが、テキストエディタの可能性を感じる機能です。
CSV ビューワとして使ってみた感じ、サクラエディタでできない列の選択が可能です。

| 項目名           |                                                                   |
| ---------------- | ----------------------------------------------------------------- |
| 読み方           | ジーパッド                                                        |
| 公式サイト       | https://mfactory.me/                                              |
| 公式リポジトリ   | -                                                                 |
| Wikipedia        | https://ja.wikipedia.org/wiki/GPad                                |
| 料金             | 無料                                                              |
| 種別             | GUI テキストエディタ                                              |
| 対応 OS          | Windows                                                           |
| 開発言語         | ？                                                                |
| 初版リリース     | ？                                                                |
| 最終アップデート | 2020 年 12 月 31 日 ([公式サイト](https://mfactory.me/) から引用) |

### EmEditor

https://jp.emeditor.com/

> EmEditor は、高速・軽量で拡張性のある Windows 用テキストエディタです。64 ビットと 32 ビットの両方のビルドが利用可能で、さらに 64 ビット版には SSE2 (128 ビット)、AVX-2 (256 ビット) と AVX-512 (512 ビット) 命令セット用の別ビルドが含まれます。
> 米国 ZDNet は、EmEditor が “世界で最も速いテキストエディターがさらに良くなった” と評価しています。
> 窓の杜は、“もう「Excel」はいらない? 最強 CSV エディター” と評価しています。
>
> [公式サイト](https://jp.emeditor.com/) から引用

最近は CSV 扱いがエディタの決め手なんでしょうか。
EmEditor も昔から有名でしたが、どんどん進化してますねぇ。

| 項目名           |                                                                            |
| ---------------- | -------------------------------------------------------------------------- |
| 読み方           | エムエディタ                                                               |
| 公式サイト       | https://jp.emeditor.com/                                                   |
| 公式リポジトリ   | -                                                                          |
| Wikipedia        | https://ja.wikipedia.org/wiki/EmEditor                                     |
| 料金             | 無料 (有料版もあり)                                                        |
| 種別             | GUI テキストエディタ                                                       |
| 対応 OS          | Windows                                                                    |
| 開発言語         | ？                                                                         |
| 初版リリース     | ？                                                                         |
| 最終アップデート | 2022 年 6 月 23 日　([公式ブログ](https://jp.emeditor.com/blog/) から引用) |

### ViVi

http://vivi.dyndns.org/

> ViVi は vi コマンドをサポートする Windows 用テキストエディタです。
>
> [公式サイト](http://vivi.dyndns.org/) から引用

こちらはその名前から察せられるように、 vi コマンドが使えます。
使用感は vi コマンドを Windows の制御キーを柔軟に使える印象です。
Ctrl-C Ctrl-V でコピペができて、それ以外は vi のように使いたい！という需要にはぴったりです。

| 項目名           |                                                                                                                       |
| ---------------- | --------------------------------------------------------------------------------------------------------------------- |
| 読み方           | ビビ                                                                                                                  |
| 公式サイト       | http://vivi.dyndns.org/                                                                                               |
| 公式リポジトリ   | https://github.com/vivisuke/openViVi                                                                                  |
| Wikipedia        | https://ja.wikipedia.org/wiki/ViVi_(%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)                                             |
| 料金             | 有料                                                                                                                  |
| 種別             | GUI テキストエディタ                                                                                                  |
| 対応 OS          | Windows                                                                                                               |
| 開発言語         | C++                                                                                                                   |
| 初版リリース     | 2001 年 6 月 1 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/ViVi_(%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)>) から引用) |
| 最終アップデート | 2020 年 11 月 21 日                                                                                                   |

## Mac 専用

### Coda (Nova)

https://nova.app/jp/

> Mac ネイティブなウェブ
> コードエディタは本当に
> より良くなれるのか？
>
> 見つけ出そう。
>
> [公式サイト](https://nova.app/jp/) から引用

MacOS に相応しい、美しいエディタで開発したい！
と思ったら Coda だったのではないでしょうか。
Nova に名前が変わったのはこの記事を書いて初めて知りましたが、相変わらずの Mac App らしさは今でも継続しているようです。

30 日間は無料でお試し、以降は￥ 11,800 で購入、1 年ごとに更新料が￥ 5,900 かかる、有料アプリです。

| 項目名           |                                                                                                            |
| ---------------- | ---------------------------------------------------------------------------------------------------------- |
| 読み方           | コーダ (ノーバ？)                                                                                          |
| 公式サイト       | https://nova.app/jp/                                                                                       |
| 公式リポジトリ   | -                                                                                                          |
| Wikipedia        | https://en.wikipedia.org/wiki/Coda_(web_development_software)                                              |
| 料金             | 有料                                                                                                       |
| 種別             | GUI テキストエディタ                                                                                       |
| 対応 OS          | macOS                                                                                                      |
| 開発言語         | ？                                                                                                         |
| 初版リリース     | 2007 年 4 月 23 日 ([Wikipedia](<https://en.wikipedia.org/wiki/Coda_(web_development_software)>) から引用) |
| 最終アップデート | 2020 年 11 月 5 日 ([Wikipedia](<https://en.wikipedia.org/wiki/Coda_(web_development_software)>) から引用) |

### CotEditor

https://coteditor.com/

> 軽快で洗練された、そして高機能なテキストエディタ
>
> [公式サイト](https://coteditor.com/) から引用

Mac でエディタ迷子のときにお試しでインストールしたことのあるエディタ。
日本語の縦書き対応は珍しい機能ではないでしょうか。

[オープンソース](https://github.com/coteditor/CotEditor) なので、こんな機能あったらいいな！と思ったらフィードバックしてみるのも良さそう。

| 項目名           |                                                                                   |
| ---------------- | --------------------------------------------------------------------------------- |
| 読み方           | コットエディタ？                                                                  |
| 公式サイト       | https://coteditor.com/                                                            |
| 公式リポジトリ   | https://github.com/coteditor/CotEditor                                            |
| Wikipedia        | https://ja.wikipedia.org/wiki/CotEditor                                           |
| 料金             | 無料                                                                              |
| 種別             | GUI テキストエディタ                                                              |
| 対応 OS          | macOS                                                                             |
| 開発言語         | Swift                                                                             |
| 初版リリース     | 2009 年 5 月 1 日 ([Wikipedia](https://ja.wikipedia.org/wiki/CotEditor) から引用) |
| 最終アップデート | 2022 年 7 月 30 日                                                                |

### Aquamacs

https://aquamacs.org/

> The Emacs for the Mac
>
> [公式サイト](https://aquamacs.org/) から引用

シンプルに「Mac で使える Emacs」です。
Emacs の使い心地のまま Mac ネイティブの OS の機能や他のアプリとの連携をしたいときに良さそうです。

| 項目名           |                                                  |
| ---------------- | ------------------------------------------------ |
| 読み方           | アクアマックス                                   |
| 公式サイト       | https://aquamacs.org/                            |
| 公式リポジトリ   | https://github.com/aquamacs-emacs/aquamacs-emacs |
| Wikipedia        | https://ja.wikipedia.org/wiki/Aquamacs           |
| 料金             | 無料                                             |
| 種別             | GUI テキストエディタ                             |
| 対応 OS          | macOS                                            |
| 開発言語         | Emacs Lisp                                       |
| 初版リリース     | ？                                               |
| 最終アップデート | 2021 年 12 月 29 日                              |

### Espresso

https://www.espressoapp.com/

> The web editor for Mac is back. For people who make delightful, innovative and fast websites — in an app to match. Espresso helps you write, code, design, build and publish with flair and efficiency. Sophisticated text features, amazing Live Preview with Browser Xray, CSSEdit tools, the Navigator, Dynamo auto-building, and Server Sync. Whether you're starting from scratch or tweaking a live site, Espresso has you covered.
>
> [公式サイト](https://www.espressoapp.com/) から引用

公式サイトの優しい色合いとは裏腹に、とにかくなんでもできてすげーから人類だったら皆使え！という勢いを感じます。
スクショを見た感じ、Brackets に似たスクリーン構成で Web 開発に長けている雰囲気です。
Mac App というだけでも解像度が高くてオシャレに見える…

| 項目名           |                              |
| ---------------- | ---------------------------- |
| 読み方           | エスプレッソ                 |
| 公式サイト       | https://www.espressoapp.com/ |
| 公式リポジトリ   | -                            |
| Wikipedia        | -                            |
| 料金             | 有料                         |
| 種別             | GUI テキストエディタ         |
| 対応 OS          | macOS                        |
| 開発言語         | ?                            |
| 初版リリース     | ？                           |
| 最終アップデート | ？                           |

### Jedit(Jedit Ω)

http://www.artman21.com/jp/jeditOmega/

> Jedit Ω は、ワープロ並みの編集機能、強力な検索/置換機能、さまざまなテキスト変換/加工ツール、入力補完/構文カラーリングなどのプログラミング支援機能など、リッチテキストからプレーンテキストまであらゆるテキストの編集・加工をサポートする「総合テキストツール」です。
>
> [公式サイト](http://www.artman21.com/jp/jeditOmega/) から引用

Mac のテキストエディタには珍しい「ルーラー」機能がついています。
ワープロのベースがあるとルーラーがセットになっている印象ですね。
（この記事を読んでいる人に「ワープロ」を知ってる人がどれだけいるか不安です…）

| 項目名           |                                                                     |
| ---------------- | ------------------------------------------------------------------- |
| 読み方           | ジェイエディット (オメガ)？                                         |
| 公式サイト       | http://www.artman21.com/jp/jeditOmega/                              |
| 公式リポジトリ   | -                                                                   |
| Wikipedia        | https://ja.wikipedia.org/wiki/Jedit                                 |
| 料金             | 有料                                                                |
| 種別             | GUI テキストエディタ                                                |
| 対応 OS          | macOS                                                               |
| 開発言語         | ?                                                                   |
| 初版リリース     | 1995 年 ([Wikipedia](https://ja.wikipedia.org/wiki/Jedit) から引用) |
| 最終アップデート | 2022 年 5 月 7 日 ([公式サイト](http://www.artman21.com/jp/))       |

## クロスプラットフォーム

「クロスプラットフォーム」と言ってはおりますが、要は Linux のデスクトップ環境でも使える (Linux のデスクトップ環境以外で使用している人をあまり見かけない) エディタ、または統合開発環境のリストです。

### gedit

https://wiki.gnome.org/Apps/Gedit

> gedit is a general-purpose text editor.
> The first goal of gedit is to be easy to use, with a simple interface by default. More advanced features are available by enabling plugins.
>
> [公式サイト](https://wiki.gnome.org/Apps/Gedit) から引用

Gnome デスクトップ環境のエディタアプリケーション部門。
Linux と Mac に対応しています。Windows にインストールするには MSYS2 が必要です。
シンプルな作りですが、プラグインでカスタマイズ可能なようです。

| 項目名           |                                                    |
| ---------------- | -------------------------------------------------- |
| 読み方           | ジーエディット？                                   |
| 公式サイト       | https://wiki.gnome.org/Apps/Gedit                  |
| 公式リポジトリ   | https://gitlab.gnome.org/GNOME/gedit/-/tree/master |
| Wikipedia        | https://ja.wikipedia.org/wiki/Gedit                |
| 料金             | 無料                                               |
| 種別             | GUI テキストエディタ                               |
| 対応 OS          | Windows,macOS,Linux (Windows はひと手間必要)       |
| 開発言語         | C                                                  |
| 初版リリース     | -                                                  |
| 最終アップデート | 42.2 (2022 年 7 月 28 日)                          |

### Geany

https://www.geany.org/

> Geany - The Flyweight IDE
>
> Geany is a powerful, stable and lightweight programmer's text editor that provides tons of useful features without bogging down your workflow. It runs on Linux, Windows and macOS is translated into over 40 languages, and has built-in support for more than 50 programming languages.
>
> [公式サイト](https://www.geany.org/) から引用

軽さがウリのクロスプラットフォームエディタです。
見た目はシンプルでキレイ。日本語化もされています。
謎にアイコンがティーポットなのが可愛いですｗ

| 項目名           |                                     |
| ---------------- | ----------------------------------- |
| 読み方           | ジーニー？                          |
| 公式サイト       | https://www.geany.org/              |
| 公式リポジトリ   | https://github.com/geany/geany      |
| Wikipedia        | https://ja.wikipedia.org/wiki/Geany |
| 料金             | 無料                                |
| 種別             | GUI テキストエディタ                |
| 対応 OS          | Windows,macOS,Linux                 |
| 開発言語         | C                                   |
| 初版リリース     | -                                   |
| 最終アップデート | 1.38 (2021 年 10 月 10 日)          |

### Kate

https://kate-editor.org/ja/

> Get an Edge in Editing
>
> Available for Linux, Windows and macOS
>
> [公式サイト](https://kate-editor.org/ja/) から引用

KDE デスクトップ環境のエディタアプリケーション部門。
KDE Plasma の鮮やかなキーカラーの水色が好みの方にオススメ。
こちらのウリはマルチプラットフォームのようです。
実際 Windows では Microsoft Store からインストールも可能です。

| 項目名           |                                    |
| ---------------- | ---------------------------------- |
| 読み方           | ケイト？                           |
| 公式サイト       | https://kate-editor.org/ja/        |
| 公式リポジトリ   | https://github.com/KDE/kate        |
| Wikipedia        | https://ja.wikipedia.org/wiki/Kate |
| 料金             | 無料                               |
| 種別             | GUI テキストエディタ               |
| 対応 OS          | Windows,macOS,Linux                |
| 開発言語         | C++                                |
| 初版リリース     | -                                  |
| 最終アップデート | 22.08 (2022 年 7 月 24 日)         |

### Light Table

http://lighttable.com/

> The next generation code editor
>
> [公式サイト](http://lighttable.com/) から引用

エディタ内で Web サイトを閲覧できるブラウザ機能があるのは初めて見ました。これは結構好き。（見た目は若干クセあり)
ダークテーマでシンプルな見た目です。
「次世代のエディタ」として Kickstarter のトップ 10 にも選ばれていたようですが、2016 年以降開発が止まっているように見えるのが残念。

| 項目名           |                                                                                            |
| ---------------- | ------------------------------------------------------------------------------------------ |
| 読み方           | ライトテーブル                                                                             |
| 公式サイト       | http://lighttable.com/                                                                     |
| 公式リポジトリ   | https://github.com/LightTable/LightTable                                                   |
| Wikipedia        | https://ja.wikipedia.org/wiki/Light_Table                                                  |
| 料金             | 無料                                                                                       |
| 種別             | GUI テキストエディタ                                                                       |
| 対応 OS          | Windows,macOS,Linux                                                                        |
| 開発言語         | Clojure                                                                                    |
| 初版リリース     | 2012 年 4 月 12 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Light_Table) から引用)       |
| 最終アップデート | 0.8.1 2016 年 1 月 22 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Light_Table) から引用) |

### SciTE

https://www.scintilla.org/SciTE.html

> SciTE is a SCIntilla based Text Editor. Originally built to demonstrate Scintilla, it has grown to be a generally useful editor with facilities for building and running programs. It is best used for jobs with simple configurations - I use it for building test and demonstration programs as well as SciTE and Scintilla, themselves.
>
> [公式サイト](https://www.scintilla.org/SciTE.html) から引用

SCIntilla（「シンティラ」と呼ぶようです）製のエディタ。SCIntilla という文書編集に特化した C++ のライブラリのようで、そのデモ用に作られたのが SciTE ということのようです。
[Wikipedia](https://ja.wikipedia.org/wiki/Scintilla) によると、Notepad++ も SCIntilla ベースとのことです。
とてもシンプルな見た目のテキストエディタで、メニューバーの View からツールバーやステータスバーなどの表示をトグルできます。

| 項目名           |                                                       |
| ---------------- | ----------------------------------------------------- |
| 読み方           | サイト？                                              |
| 公式サイト       | https://www.scintilla.org/SciTE.html                  |
| 公式リポジトリ   | https://github.com/mirror/scite (ミラー)              |
| Wikipedia        | https://ja.wikipedia.org/wiki/SciTE                   |
| 料金             | 無料                                                  |
| 種別             | GUI テキストエディタ                                  |
| 対応 OS          | Windows,macOS,Linux                                   |
| 開発言語         | C++ ([Wikipedia](https://ja.wikipedia.org/wiki/SciTE) |
| 初版リリース     | 2000 年 3 月 8 日                                     |
| 最終アップデート | 5.2.4 (2022 年 7 月 8 日)                             |

### Scribes

http://scribes.sourceforge.net/

> Simple, slim and sleek, yet powerful.
>
> [公式サイト](http://scribes.sourceforge.net/) から引用

公式サイトが物語っているように、シンプルさ、ミニマリズムをコンセプトにしているようです。
情報が少なく、作者のブログも 2012 年以降の更新がなく、Twitter の非公開になっているため、気になる方は使って試してみるしかなさそうです…

| 項目名           |                                                                      |
| ---------------- | -------------------------------------------------------------------- |
| 読み方           | スクライブス？                                                       |
| 公式サイト       | http://scribes.sourceforge.net/                                      |
| 公式リポジトリ   | -                                                                    |
| Wikipedia        | https://ja.wikipedia.org/wiki/Scribes                                |
| 料金             | 無料                                                                 |
| 種別             | GUI テキストエディタ                                                 |
| 対応 OS          | Linux                                                                |
| 開発言語         | Python ([Wikipedia](https://ja.wikipedia.org/wiki/Scribes)) から引用 |
| 初版リリース     | -                                                                    |
| 最終アップデート | 0.4                                                                  |

## IDE

### Eclipse

https://www.eclipse.org/

> The Community for Open Innovation and Collaboration
>
> [公式サイト](https://www.eclipse.org/) から引用

現在の統合開発環境の先祖と言っても過言ではないです。（異論しか認めません
Java の開発といえばエクリプス！という認識はもう古いのでしょうか？
私は昔は Eclipse で PHP の開発をしていました。
最新のパッケージをインストールしてみたところ、インストーラーが「Java, PHP, C++ のどれにしますか？」と訪ねてきたので、基本的なコンセプトは昔からあまり変わっていないようです。

| 項目名           |                                                                                                                                                       |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| 読み方           | エクリプス                                                                                                                                            |
| 公式サイト       | https://www.eclipse.org/                                                                                                                              |
| 公式リポジトリ   | -                                                                                                                                                     |
| Wikipedia        | https://ja.wikipedia.org/wiki/Eclipse_(%E7%B5%B1%E5%90%88%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83)                                                        |
| 料金             | 無料                                                                                                                                                  |
| 種別             | GUI 統合開発環境                                                                                                                                      |
| 対応 OS          | Windows,macOS,Linux                                                                                                                                   |
| 開発言語         | Java [Wikipedia](<https://ja.wikipedia.org/wiki/Eclipse_(%E7%B5%B1%E5%90%88%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83)>) から引用)                          |
| 初版リリース     | 2001 年 11 月 29 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Eclipse_(%E7%B5%B1%E5%90%88%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83)>) から引用)          |
| 最終アップデート | 2022‑06 (2022 年 6 月 15 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Eclipse_(%E7%B5%B1%E5%90%88%E9%96%8B%E7%99%BA%E7%92%B0%E5%A2%83)>) から引用)) |

### Xcode

https://developer.apple.com/jp/xcode/

> Xcode 14 には、すべての Apple プラットフォームで App を開発、テスト、配信するために必要なものがすべて含まれています。Swift と SwiftUI のシンプルさとパワーを活用し、新しいマルチプラットフォーム App 体験の実現、強化されたエディタ機能を利用した、より高速なコーディング、Xcode Cloud から TestFlight や App Store に移行してテスト、デプロイを始めたりすることができます。
>
> [公式サイト](https://developer.apple.com/jp/xcode/) から引用

iOS をはじめ、Apple 社のプロダクト向けのアプリを開発するなら、避けては通れない逸品。
一時期は Xcode 自体が有料でしたが、いつからか無料になって「とりあえずアプリでも開発してみようかな」と気軽に触れるようになりました。

| 項目名           |                                                                                 |
| ---------------- | ------------------------------------------------------------------------------- |
| 読み方           | エックスコード                                                                  |
| 公式サイト       | https://developer.apple.com/jp/xcode/                                           |
| 公式リポジトリ   | -                                                                               |
| Wikipedia        | https://ja.wikipedia.org/wiki/Xcode                                             |
| 料金             | 無料                                                                            |
| 種別             | GUI 統合開発環境                                                                |
| 対応 OS          | macOS                                                                           |
| 開発言語         | ?                                                                               |
| 初版リリース     | 2003 年 10 月 24 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Xcode) から引用) |
| 最終アップデート | 14 (2022 年 6 月 2 日)                                                          |

### Visual Studio

https://visualstudio.microsoft.com/ja/

> それはソフトウェアの作成方法です
>
> [コード、ビルド、デバッグ、展開、共同作業、分析、学習] のうち、今すぐ必要なものはなんですか?
> Visual Studio ならそれを実現できます。
>
> [公式サイト](https://visualstudio.microsoft.com/ja/) から引用

マイクロソフト社から公開されている Windows アプリケーション製作のための統合開発環境です。
最近の Windows は Linux の技術を多く取り込んでいるので、Linux や Android のアプリケーションも対応しているようです。
Apple が Xcode でマイクロソフトが Visual Studio をそれぞれ統合開発環境として公開している、と覚えておけばよいでしょう。

| 項目名           |                                                                                                                                             |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| 読み方           | ビジュアルスタジオ                                                                                                                          |
| 公式サイト       | https://visualstudio.microsoft.com/ja/                                                                                                      |
| 公式リポジトリ   | -                                                                                                                                           |
| Wikipedia        | https://ja.wikipedia.org/wiki/Microsoft_Visual_Studio                                                                                       |
| 料金             | 無料 (有料のエディションも有り)                                                                                                             |
| 種別             | GUI 統合開発環境                                                                                                                            |
| 対応 OS          | Windows                                                                                                                                     |
| 開発言語         | ?                                                                                                                                           |
| 初版リリース     | 1991 年 ([Wikipedia](https://ja.wikipedia.org/wiki/Visual_Basic) から引用)                                                                  |
| 最終アップデート | 2022 17.3 (2022 年 7 月 26 日 ([公式リリース](https://docs.microsoft.com/ja-jp/visualstudio/releases/2022/release-notes-preview) から引用)) |

### Unity

https://unity.com/ja

> 未来を決めるのは皆さんです
> リアルタイムコンテンツ制作を担う、世界をリードするプラットフォーム
>
> [公式サイト](https://unity.com/ja) から引用

3D のプロダクト製作のトップランナー。
エディタの枠で紹介するのを躊躇いましたが、Unity しか使っていないエンジニアもいそうな予感がしたのであえてリストアップしました。
Unity で初めて C# を触った、というユーザーも多いのではないでしょうか。

| 項目名           |                                                                                                                                                              |
| ---------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 読み方           | ユニティ                                                                                                                                                     |
| 公式サイト       | https://visualstudio.microsoft.com/ja/                                                                                                                       |
| 公式リポジトリ   | -                                                                                                                                                            |
| Wikipedia        | https://ja.wikipedia.org/wiki/Unity_(%E3%82%B2%E3%83%BC%E3%83%A0%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%B3)                                                        |
| 料金             | 有料 (無料プランもあり)                                                                                                                                      |
| 種別             | GUI 統合開発環境                                                                                                                                             |
| 対応 OS          | Windows,macOS,Linux                                                                                                                                          |
| 開発言語         | ?                                                                                                                                                            |
| 初版リリース     | 2005 年 6 月 8 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Unity_(%E3%82%B2%E3%83%BC%E3%83%A0%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%B3)>) から引用)            |
| 最終アップデート | 2022.1.0f1 2022 年 5 月 9 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Unity_(%E3%82%B2%E3%83%BC%E3%83%A0%E3%82%A8%E3%83%B3%E3%82%B8%E3%83%B3)>) から引用) |

### Adobe Dreamweaver

https://www.adobe.com/jp/products/dreamweaver.html

Adobe 社が提供する、Web 開発に特化した IDE。
私の観測範囲では、結構使われているようです。
(個人的には Flash と共に衰退したと勝手に思い込んでいました…)

歴史は古く、もともとは Macromedia 社の製品でしたが、2005 年に Adobe 社によって Macromedia 社が買収され、
以降は Adobe 社の製品として販売されています。

> Macromedia Dreamweaver 1.0 (1997 年 12 月発売、Dreamweaver 1.2 は 1998 年 3 月)
>
> [Wikipedia](https://ja.wikipedia.org/wiki/Adobe_Dreamweaver) から引用

料金は、年間プランの月々払いで、月￥ 2,480 + 消費税￥ 248 = ￥ 2,728 です。(2022/07/22 現在)

| 項目名           |                                                                                                              |
| ---------------- | ------------------------------------------------------------------------------------------------------------ |
| 読み方           | アドビ ドリームウィーバー                                                                                    |
| 公式サイト       | https://www.adobe.com/jp/products/dreamweaver.html                                                           |
| 公式リポジトリ   | -                                                                                                            |
| Wikipedia        | https://ja.wikipedia.org/wiki/Adobe_Dreamweaver                                                              |
| 料金             | 有料                                                                                                         |
| 種別             | GUI 統合開発環境                                                                                             |
| 対応 OS          | Windows,macOS                                                                                                |
| 開発言語         | ?                                                                                                            |
| 初版リリース     | 1997 年 12 月 ([Wikipedia](https://ja.wikipedia.org/wiki/Adobe_Dreamweaver) から引用)                        |
| 最終アップデート | 21.3 2022 年 6 月 ([公式リリースノート](https://helpx.adobe.com/jp/dreamweaver/release-notes.html) から引用) |

### Qt Creator

https://www.qt.io/ja-jp/product/development-tools

> すべてを備えた IDE
>
> Qt Creator は、最大の開発者エクスペリエンスを実現するために構築されたクロスプラットフォーム統合開発環境（IDE）です。 Qt Creator は、Windows、Linux、および macOS デスクトップオペレーティングシステムで実行でき、デスクトップ、モバイル、および組み込みプラットフォームを問わずアプリケーションを開発することが可能です。
>
> [公式サイト](https://www.qt.io/ja-jp/product/development-tools)

Qt (キュート) という GUI ツールキットのアプリケーションを製作するための統合開発環境です。
KDE のツールキットとしても有名で、Skype や VLC なんかも Qt で作られています。
ﾜﾀｼﾊﾘﾅｯｸｽﾁｮｯﾄﾃﾞｷﾙ勢は Qt を聞いたことある人も多いはず。
Visual Studio の Qt エクステンションもあるようです。

| 項目名           |                                                                                       |
| ---------------- | ------------------------------------------------------------------------------------- |
| 読み方           | キュートクリエイター                                                                  |
| 公式サイト       | https://www.qt.io/ja-jp/product/development-tools                                     |
| 公式リポジトリ   | https://github.com/qt-creator/qt-creator                                              |
| Wikipedia        | https://en.wikipedia.org/wiki/Qt_Creator                                              |
| 料金             | 無料                                                                                  |
| 種別             | GUI 統合開発環境                                                                      |
| 対応 OS          | Windows,macOS,Linux                                                                   |
| 開発言語         | C++ ([Wikipedia](https://en.wikipedia.org/wiki/Qt_Creator) から引用)                  |
| 初版リリース     | 2007 年 ([Wikipedia](https://en.wikipedia.org/wiki/Qt_Creator) から引用)              |
| 最終アップデート | 8 2022 年 7 月 20 日 ([Wikipedia](https://en.wikipedia.org/wiki/Qt_Creator) から引用) |

### Aptana Studio

http://www.aptana.com/

> The world’s most powerful open-source web development IDE just got better. Rebuilt from the ground-up. It's now much faster, customizable and includes new features to help you be more productive.
>
> [公式サイト](http://www.aptana.com/) から引用

Web 開発に特化した統合開発環境です。
一時期よく目にした印象がありますが、2018 年から開発が進んでいないようです。

| 項目名           |                                      |
| ---------------- | ------------------------------------ |
| 読み方           | アプタナスタジオ？                   |
| 公式サイト       | http://www.aptana.com/               |
| 公式リポジトリ   | https://github.com/aptana/studio3    |
| Wikipedia        | https://ja.wikipedia.org/wiki/Aptana |
| 料金             | 無料                                 |
| 種別             | GUI 統合開発環境                     |
| 対応 OS          | Windows,macOS,Linux                  |
| 開発言語         | Java, JavaScript                     |
| 初版リリース     | -                                    |
| 最終アップデート | 2018 年 9 月 17 日                   |

### NetBeans

https://netbeans.apache.org/

> Fits the Pieces Together
>
> Development Environment, Tooling Platform and Application Framework.
>
> [公式サイト](https://netbeans.apache.org/) から引用

Java の印象が強いです。
それもそのはず、Java を生み出した今はなきサン・マイクロシステムズ社 (オラクル社が買収) によって開発されていたようです。
Apache ソフトウェア財団のトップレベルプロジェクトとして、現在もなお開発が進んでいます。
[Wikipedia](https://ja.wikipedia.org/wiki/NetBeans) の下の方にあるけど、「ねこび～ん」かわよ。

| 項目名           |                                                                        |
| ---------------- | ---------------------------------------------------------------------- |
| 読み方           | ネットビーンズ                                                         |
| 公式サイト       | https://netbeans.apache.org/                                           |
| 公式リポジトリ   | https://github.com/apache/netbeans                                     |
| Wikipedia        | https://ja.wikipedia.org/wiki/NetBeans                                 |
| 料金             | 無料                                                                   |
| 種別             | GUI 統合開発環境                                                       |
| 対応 OS          | Windows,macOS,Linux                                                    |
| 開発言語         | Java ([Wikipedia](https://ja.wikipedia.org/wiki/NetBeans) から引用)    |
| 初版リリース     | 1997 年 ([Wikipedia](https://ja.wikipedia.org/wiki/NetBeans) から引用) |
| 最終アップデート | 2022 年 6 月 16 日                                                     |

### Oracle JDeveloper

https://www.oracle.com/jp/tools/technologies/developer-tools/jdev.html

> 生産的な Java ベースのアプリケーション開発
>
> Oracle JDeveloper は、アプリケーション・ライフサイクルの各ステップに対処 する Java ベース・アプリケーションの開発を簡素化する無償の統合開発環境です。 JDeveloper は Oracle のプラットフォームおよび Oracle のアプリケーションのため に完全なエンドツーエンド開発を提供します。
>
> [公式サイト](https://www.oracle.com/jp/tools/technologies/developer-tools/jdev.html) から引用

こちらも Java 開発のための統合開発環境です。
「オラクルのアプリケーションのため」を見て、「オラクルってデータベース以外にもアプリケーションあるんだ！」となりましたｗ

| 項目名           |                                                                                     |
| ---------------- | ----------------------------------------------------------------------------------- |
| 読み方           | オラクル ジェイディベロッパー                                                       |
| 公式サイト       | https://www.oracle.com/jp/tools/technologies/developer-tools/jdev.html              |
| 公式リポジトリ   | -                                                                                   |
| Wikipedia        | https://ja.wikipedia.org/wiki/JDeveloper                                            |
| 料金             | 有料                                                                                |
| 種別             | GUI 統合開発環境                                                                    |
| 対応 OS          | Windows,macOS,Linux                                                                 |
| 開発言語         | Java                                                                                |
| 初版リリース     | 2005 年 ([Wikipedia](https://en.wikipedia.org/wiki/JDeveloper) から引用)            |
| 最終アップデート | 2019 年 9 月 27 日 ([Wikipedia](https://en.wikipedia.org/wiki/JDeveloper) から引用) |

## JET BRAINS

### IntelliJ IDEA

https://www.jetbrains.com/ja-jp/idea/

> Enjoy Productive Java
> Every aspect of IntelliJ IDEA has been designed to maximize developer productivity. Together, intelligent coding assistance and ergonomic design make development not only productive but also enjoyable.
>
> [公式サイト](https://www.jetbrains.com/ja-jp/idea/) から引用

IntelliJ は Java 開発の統合開発環境です。
私の周りでは、後ろの「アイデア」を抜いて「インテリジェイ」と呼ばれ、購入して使用しているエンジニア結構多いです。
というよりは JET BRAINS 社の製品をひっくるめて「インテリジェイ系」と呼んでいたりするので、実際には後述する [RubyMine](#rubymine) だったり [PyCharm](#pycharm) を使っているケースが多いですが。
独特のダークさのある見た目の印象があって、好きな人は他のエディタを使う気にならないそうです。

| 項目名           |                                                                                  |
| ---------------- | -------------------------------------------------------------------------------- |
| 読み方           | インテリジェイ アイデア                                                          |
| 公式サイト       | https://www.jetbrains.com/ja-jp/idea/                                            |
| 公式リポジトリ   | -                                                                                |
| Wikipedia        | https://ja.wikipedia.org/wiki/IntelliJ_IDEA                                      |
| 料金             | 有料                                                                             |
| 種別             | GUI 統合開発環境                                                                 |
| 対応 OS          | Windows,macOS,Linux                                                              |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用) |
| 初版リリース     | 2001 年 1 月 ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用) |
| 最終アップデート | 2022 年 7 月 26 日 ([公式ダウンロードページ]　から引用)                          |

### WebStorm

https://www.jetbrains.com/ja-jp/webstorm/

> 最もスマートな JavaScript IDE
>
> WebStorm は JavaScript と関連テクノロジー向けの統合開発環境です。ほかの JetBrains IDE と同様に、日常業務を自動化して複雑なタスクを簡単に処理できるようにするため、より楽しい開発エクスペリエンスを得ることができます。
>
> [公式サイト](https://www.jetbrains.com/ja-jp/webstorm/) から引用

Web 開発に特化した JET BRAINS 社の統合開発環境です。
対応言語以外、中身はほとんど [IntelliJ IDEA](#intellij-idea) と同じだと思ってますがどうなんでしょうか。

| 項目名           |                                                                                                                      |
| ---------------- | -------------------------------------------------------------------------------------------------------------------- |
| 読み方           | ウェブストーム                                                                                                       |
| 公式サイト       | https://www.jetbrains.com/ja-jp/webstorm/                                                                            |
| 公式リポジトリ   | -                                                                                                                    |
| Wikipedia        | -                                                                                                                    |
| 料金             | 有料                                                                                                                 |
| 種別             | GUI 統合開発環境                                                                                                     |
| 対応 OS          | Windows,macOS,Linux                                                                                                  |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                     |
| 初版リリース     | 2010 年 8 月 8 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/webstorm/download/other.html) から引用)  |
| 最終アップデート | 2022 年 7 月 25 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/webstorm/download/other.html) から引用) |

### PhpStorm

https://www.jetbrains.com/ja-jp/phpstorm/

> 超高速でスマートな PHP IDE
>
> [公式サイト](https://www.jetbrains.com/ja-jp/phpstorm/) から引用

PHP 開発に特化した JET BRAINS 社の統合開発環境です。
こちらも PHP 対応以外、中身はほとんど [IntelliJ IDEA](#intellij-idea) と同じだと思ってます。

| 項目名           |                                                                                                                      |
| ---------------- | -------------------------------------------------------------------------------------------------------------------- |
| 読み方           | ピーエイチピーストーム                                                                                               |
| 公式サイト       | https://www.jetbrains.com/ja-jp/phpstorm/                                                                            |
| 公式リポジトリ   | -                                                                                                                    |
| Wikipedia        | -                                                                                                                    |
| 料金             | 有料                                                                                                                 |
| 種別             | GUI 統合開発環境                                                                                                     |
| 対応 OS          | Windows,macOS,Linux                                                                                                  |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                     |
| 初版リリース     | 2011 年 9 月 16 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/phpstorm/download/other.html) から引用) |
| 最終アップデート | 2022 年 7 月 26 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/phpstorm/download/other.html) から引用) |

### RubyMine

https://www.jetbrains.com/ja-jp/ruby/

> 最もインテリジェントな Ruby と Rails IDE
>
> [公式サイト](https://www.jetbrains.com/ja-jp/ruby/) から引用

Ruby 開発に特化した JET BRAINS 社の統合開発環境です。
私自身が Ruby / Rails で開発するプロジェクトに所属していたこともあって、周りの利用率はめっちゃ高めでした。
ちなみに RubyMine で Rust の開発をしている人もいるので、プラグイン？を入れれば基本はどの言語でも使えちゃう認識ですが、間違ってたらごめんなさい！

| 項目名           |                                                                                                                  |
| ---------------- | ---------------------------------------------------------------------------------------------------------------- |
| 読み方           | ルビーマイン                                                                                                     |
| 公式サイト       | https://www.jetbrains.com/ja-jp/ruby/                                                                            |
| 公式リポジトリ   | -                                                                                                                |
| Wikipedia        | -                                                                                                                |
| 料金             | 有料                                                                                                             |
| 種別             | GUI 統合開発環境                                                                                                 |
| 対応 OS          | Windows,macOS,Linux                                                                                              |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                 |
| 初版リリース     | 2012 年 4 月 19 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/ruby/download/other.html) から引用) |
| 最終アップデート | 2022 年 7 月 21 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/ruby/download/other.html) から引用) |

### PyCharm

https://www.jetbrains.com/ja-jp/pycharm/

> プロの開発者向け Python IDE
>
> [公式サイト](https://www.jetbrains.com/ja-jp/pycharm/) から引用

Python 開発に特化した JET BRAINS 社の統合開発環境です。
これとは別に、(エディタではないですが) [Datalore](https://datalore.jetbrains.com/) という Jupyter notebook に特化した製品もあるようです。

| 項目名           |                                                                                                                     |
| ---------------- | ------------------------------------------------------------------------------------------------------------------- |
| 読み方           | パイチャーム                                                                                                        |
| 公式サイト       | https://www.jetbrains.com/ja-jp/pycharm/                                                                            |
| 公式リポジトリ   | -                                                                                                                   |
| Wikipedia        | -                                                                                                                   |
| 料金             | 有料                                                                                                                |
| 種別             | GUI 統合開発環境                                                                                                    |
| 対応 OS          | Windows,macOS,Linux                                                                                                 |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                    |
| 初版リリース     | 2011 年 1 月 18 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/pycharm/download/other.html) から引用) |
| 最終アップデート | 2022 年 7 月 28 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/pycharm/download/other.html) から引用) |

### Rider

https://www.jetbrains.com/ja-jp/rider/

> 高速で強力なクロスプラットフォーム.NET IDE
>
> [公式サイト](https://www.jetbrains.com/ja-jp/rider/) から引用

こちらも JET BRAINS 社の統合開発環境です。
.NET なので Windows アプリケーション開発に特化している、という認識で合ってますか？
.NET, C#, Windows... に関連しているとは思うけど、なぜ名称が「Rider」なんだろ…何に係ってるん？

| 項目名           |                                                                                                                  |
| ---------------- | ---------------------------------------------------------------------------------------------------------------- |
| 読み方           | ライダー？                                                                                                       |
| 公式サイト       | https://www.jetbrains.com/ja-jp/rider/                                                                           |
| 公式リポジトリ   | -                                                                                                                |
| Wikipedia        | -                                                                                                                |
| 料金             | 有料                                                                                                             |
| 種別             | GUI 統合開発環境                                                                                                 |
| 対応 OS          | Windows,macOS,Linux                                                                                              |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                 |
| 初版リリース     | 2017 年 8 月 3 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/rider/download/other.html) から引用) |
| 最終アップデート | 2022 年 6 月 3 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/rider/download/other.html) から引用) |

### CLion

https://www.jetbrains.com/ja-jp/clion/

> C と C++用のクロスプラットフォーム IDE
>
> [公式サイト](https://www.jetbrains.com/ja-jp/clion/) から引用

C / C++ 開発に特化した JET BRAINS 社の統合開発環境です。
ここまで来ると特に言及するトピックはございませんｗ

| 項目名           |                                                                                                                   |
| ---------------- | ----------------------------------------------------------------------------------------------------------------- |
| 読み方           | シーライオン                                                                                                      |
| 公式サイト       | https://www.jetbrains.com/ja-jp/clion/                                                                            |
| 公式リポジトリ   | -                                                                                                                 |
| Wikipedia        | -                                                                                                                 |
| 料金             | 有料                                                                                                              |
| 種別             | GUI 統合開発環境                                                                                                  |
| 対応 OS          | Windows,macOS,Linux                                                                                               |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                  |
| 初版リリース     | 2016 年 5 月 11 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/clion/download/other.html) から引用) |
| 最終アップデート | 2022 年 7 月 27 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/clion/download/other.html) から引用) |

### AppCode

https://www.jetbrains.com/ja-jp/objc/

> IOS/macOS 開発用のスマート IDE
>
> [公式サイト](https://www.jetbrains.com/ja-jp/objc/) から引用

iOS / macOS 開発に特化した JET BRAINS 社の統合開発環境です。
URL を見ると Objective-C になっておりますが、Swift、C、C++ も対応してそうです。

| 項目名           |                                                                                                                   |
| ---------------- | ----------------------------------------------------------------------------------------------------------------- |
| 読み方           | アップコード                                                                                                      |
| 公式サイト       | https://www.jetbrains.com/ja-jp/objc/                                                                             |
| 公式リポジトリ   | -                                                                                                                 |
| Wikipedia        | -                                                                                                                 |
| 料金             | 有料                                                                                                              |
| 種別             | GUI 統合開発環境                                                                                                  |
| 対応 OS          | Windows,macOS,Linux                                                                                               |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                  |
| 初版リリース     | 2018 年 11 月 23 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/objc/download/other.html) から引用) |
| 最終アップデート | 2022 年 7 月 28 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/objc/download/other.html) から引用)  |

### GoLand

https://www.jetbrains.com/go/promo/

> A Go IDE with extended support for JavaScript, TypeScript, and databases
>
> [公式サイト](https://www.jetbrains.com/go/promo/) から引用

Go 言語開発に特化した JET BRAINS 社の統合開発環境です。
とは言え Go 言語を Web 開発に使っていても、合わせてフロントエンドのソースコードが同じ階層に含まれるのはよくあることなので、JavaScript、TypeScript やその他関連の言語もサポートされているのは当然かもしれないですね。

| 項目名           |                                                                                                                 |
| ---------------- | --------------------------------------------------------------------------------------------------------------- |
| 読み方           | ゴーランド                                                                                                      |
| 公式サイト       | https://www.jetbrains.com/go/promo/                                                                             |
| 公式リポジトリ   | -                                                                                                               |
| Wikipedia        | -                                                                                                               |
| 料金             | 有料                                                                                                            |
| 種別             | GUI 統合開発環境                                                                                                |
| 対応 OS          | Windows,macOS,Linux                                                                                             |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                                |
| 初版リリース     | 2018 年 11 月 23 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/go/download/other.html) から引用) |
| 最終アップデート | 2022 年 7 月 28 日 ([公式ダウンロードページ](https://www.jetbrains.com/ja-jp/go/download/other.html) から引用)  |

### Android Studio

https://developer.android.com/studio?hl=ja

Google 社製の Android 開発に特化した統合開発環境です。
JET BRAINS 社製ではありませんが、IntelliJ ベースで作られているためこちらにリストアップしました。
こちらは無料です。

| 項目名           |                                                                                                                |
| ---------------- | -------------------------------------------------------------------------------------------------------------- |
| 読み方           | アンドロイドスタジオ                                                                                           |
| 公式サイト       | https://developer.android.com/studio?hl=ja                                                                     |
| 公式リポジトリ   | https://android.googlesource.com/platform/tools/adt/idea                                                       |
| Wikipedia        | https://ja.wikipedia.org/wiki/Android_Studio                                                                   |
| 料金             | 無料                                                                                                           |
| 種別             | GUI 統合開発環境                                                                                               |
| 対応 OS          | Windows,macOS,Linux                                                                                            |
| 開発言語         | Java, Kotlin ([Wikipedia](https://en.wikipedia.org/wiki/IntelliJ_IDEA) から引用)                               |
| 初版リリース     | 2017 年 5 月 11 日 ([公式ダウンロードアーカイブ](https://developer.android.com/studio/archive?hl=ja) から引用) |
| 最終アップデート | 2022 年 7 月 7 日 ([公式ダウンロードアーカイブ](https://developer.android.com/studio/archive?hl=ja) から引用)  |

## Electron ベース

### Atom

https://atom.io/

> A hackable text editor for the 21st Century
>
> [公式サイト](https://atom.io/) から引用

> GitHub の共同創業者であるクリス・ワンストラスによって 2008 年に開始されたプロジェクトだが、同社のビジネスが成功したことでワンストラスが多忙となり開発が一時停止していた。その後、2011 年から開発が再開され、2014 年 2 月 26 日に招待制のベータバージョンとしてまず Mac OS X 向けがリリースされた。同年 5 月 6 日、MIT License のもとでソースコードを公開。2015 年 6 月 26 日にバージョン 1.0 がリリースされた。その後も、多数のコミッタの参加により、急激に高機能化、動作負荷削減を果たしながらシェアを増加させてきた。現在では、Web フロントエンドを扱う技術者を中心に人気となっている。
>
> Electron を使用したデスクトップアプリケーションであり、ユーザーインターフェースはウェブ技術である JavaScript、CSS などを使ってカスタマイズ可能となっている。
>
> 同世代のテキストエディタである Brackets・Sublime Text と良く比較される。
>
> 2022 年 6 月 8 日、同年末の 12 月 15 日をもって開発を終了すると発表した。理由として Visual Studio Code の台頭が挙げられた。
>
> [Wikipedia](<https://ja.wikipedia.org/wiki/Atom_(%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)>) から引用

惜しまれつつも今年(2022 年)末に開発が止まるようです。
ちなみに、後述しますが、Atom の開発者？の [nathansobo](https://twitter.com/nathansobo) 氏が、新たな高速エディタ Zed を開発し始めているようです。

| 項目名           |                                                                                                                                                            |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 読み方           | アトム                                                                                                                                                     |
| 公式サイト       | https://atom.io/                                                                                                                                           |
| 公式リポジトリ   | https://github.com/atom/atom                                                                                                                               |
| Wikipedia        | https://ja.wikipedia.org/wiki/Atom_(%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)                                              |
| 料金             | 無料                                                                                                                                                       |
| 種別             | GUI テキストエディタ                                                                                                                                       |
| 対応 OS          | Windows,macOS,Linux                                                                                                                                        |
| 開発言語         | JavaScript                                                                                                                                                 |
| 初版リリース     | 2014 年 2 月 26 日 ([Wikipedia](<https://ja.wikipedia.org/wiki/Atom_(%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%82%A8%E3%83%87%E3%82%A3%E3%82%BF)>) から引用) |
| 最終アップデート | 2022 年 12 月 15 日 (予定)                                                                                                                                 |

### Visual Studio Code

https://code.visualstudio.com/

> Code editing.
> Redefined.
>
> Free. Built on open source. Runs everywhere.
>
> [公式サイト](https://code.visualstudio.com/) から引用

マイクロソフト社 謹製、無料でオープンソースで **なんでもできちゃう** テキストエディタです。
通称 VSCode と呼ばれ、最近はかなり勢いのあるエディタです。
サイドバー、メインエディタ、パネル、ステータスバーなど、エディタに欲しい機能は一通り揃っていて、かつプラグインがいっぱいあります。

| 項目名           |                                                                                             |
| ---------------- | ------------------------------------------------------------------------------------------- |
| 読み方           | ビジュアルスタジオコード、ブイエスコード                                                    |
| 公式サイト       | https://code.visualstudio.com/                                                              |
| 公式リポジトリ   | https://github.com/microsoft/vscode                                                         |
| Wikipedia        | https://ja.wikipedia.org/wiki/Visual_Studio_Code                                            |
| 料金             | 無料                                                                                        |
| 種別             | GUI テキストエディタ                                                                        |
| 対応 OS          | Windows,macOS,Linux                                                                         |
| 開発言語         | JavaScript                                                                                  |
| 初版リリース     | 2015 年 4 月 29 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Visual_Studio_Code) から引用) |
| 最終アップデート | 2022 年 7 月 19 日                                                                          |

### Graviton

https://github.com/Graviton-Code-Editor/Graviton-App

> Ditch ElectronJS (NodeJS) in favor of Tauri (Rust)
>
> [GitHub リポジトリ](https://github.com/Graviton-Code-Editor/Graviton-App) から引用

Electron ベースでカテゴライズしましたが、Tauri という Rust 製のアプリケーションフレームワークで書き直しているようです。
Rust ベースのエディタ増えてるなぁ…

| 項目名           |                                                      |
| ---------------- | ---------------------------------------------------- |
| 読み方           | グラビトン？                                         |
| 公式サイト       | https://github.com/Graviton-Code-Editor/Graviton-App |
| 公式リポジトリ   | https://github.com/Graviton-Code-Editor/Graviton-App |
| Wikipedia        | -                                                    |
| 料金             | 無料                                                 |
| 種別             | GUI テキストエディタ                                 |
| 対応 OS          | Windows,macOS,Linux                                  |
| 開発言語         | TypeScript, Rust                                     |
| 初版リリース     | 2018 年 12 月 28 日                                  |
| 最終アップデート | 2021 年 4 月 20 日                                   |

## 期待のルーキー

### Xi

https://xi-editor.io/

> An editor for the next 20 years
>
> [公式サイト](https://xi-editor.io/) から引用

20 年先まで見据えたテキストエディタ。
と言いつつ、2020 年ごろから開発が進んでいないように見えます…

| 項目名           |                                                        |
| ---------------- | ------------------------------------------------------ |
| 読み方           | ザイ                                                   |
| 公式サイト       | https://xi-editor.io/                                  |
| 公式リポジトリ   | https://github.com/xi-editor/xi-editor                 |
| Wikipedia        | https://it.wikipedia.org/wiki/Xi_(editor) (イタリア語) |
| 料金             | 無料                                                   |
| 種別             | CUI, GUI テキストエディタ                              |
| 対応 OS          | Windows,macOS,Linux                                    |
| 開発言語         | Rust                                                   |
| 初版リリース     | 2017 年 4 月 11 日                                     |
| 最終アップデート | 2019 年 6 月 29 日                                     |

### Lapce

https://lapce.dev/

> Lightning-fast and Powerful Code Editor
>
> Open source. Quick from launch to every keystroke, and batteries included.
>
> [公式サイト](https://lapce.dev/) から引用

Rust で作られた `Lightning-fast` なエディタ。
Rust で作られたものはだいたい `Lightning-fast` を謳ってるので、「あーはいはい、ライトニングかブレイジングに早いのね」と話半分で見るようにしています。(斜めから見すぎ)

見た目の雰囲気は、サイドバー、メインエディタ、ボトムターミナルのよくある構成で、プラグイン機能で言語サポートやシンタックスハイライトが導入できます。

現状ではトップページにも `Pre-alpha Stage` とラベルが付いているように、まだ機能不足感は否めません。
GitHub のコミットログを見ると、今でもガンガン更新されているようなので、これからの展開に期待は持てるかもしれません。

| 項目名           |                                |
| ---------------- | ------------------------------ |
| 読み方           | ラプス？                       |
| 公式サイト       | https://lapce.dev/             |
| 公式リポジトリ   | https://github.com/lapce/lapce |
| Wikipedia        | -                              |
| 料金             | 無料                           |
| 種別             | GUI テキストエディタ           |
| 対応 OS          | Windows,macOS,Linux            |
| 開発言語         | Rust                           |
| 初版リリース     | 2021 年 12 月 14 日            |
| 最終アップデート | 2022 年 7 月 15 日             |

### zed

https://zed.dev/

> Introducing Zed – A lightning-fast, collaborative code editor written in Rust.

Rust で作られた `lightning-fast` なエディタ。(2 回目)
~~いや、嘘です。まだ作られているかどうかもわかりません。~~
【追記】動きがあったようです。「起動がめちゃ軽い」とのこと！
https://twitter.com/cocopon/status/1560249329281298436?s=20&t=4WWPN48CBbNSdo-nA-Sv-Q

https://qiita.com/access3151fq/items/4b031d856550d749ffe4

こちらの Qiita の記事で若干話題になっていましたが、[Atom](#atom) の開発終了のお知らせの翌日に「ゼットの太陽が昇る まだ終わってない」とつぶやく **Atom の作者** ということで、「おっこれは気になるぞ」と若干の期待を感じさせました。
しかし [Atom のコントリビュータ](https://github.com/atom/atom/graphs/contributors) リストを見てみると、名前はあるもののコアの開発にガンガン取り組んでいた、とは言えないように見えます。

まぁでもプロダクトを見てないうちにあーだこーだ言ってもしょうがないので、ここはジッと「先生の次回作に期待」しましょう。

ちなみに、zed という名前のエディタがすでに [GitHub](https://github.com/zedapp/zed) に存在しますが、こちらとは多分別物だと思われます。(コミットが 10 年前とかだし…)

| 項目名           |                      |
| ---------------- | -------------------- |
| 読み方           | ゼッド？             |
| 公式サイト       | https://zed.dev/     |
| 公式リポジトリ   | -                    |
| Wikipedia        | -                    |
| 料金             | 無料                 |
| 種別             | GUI テキストエディタ |
| 対応 OS          | ?                    |
| 開発言語         | Rust                 |
| 初版リリース     | 未公開               |
| 最終アップデート | 未公開               |

## その他

### Sublime Text

https://www.sublimetext.com/

一時期みんな使ってましたよね？？というくらい 10 年近く前は流行ってました。
今ではわりと一般的になったミニマップですが、私は Sublime Text で初めて見て、それはそれは衝撃でした。
「便利なのかはよくわからんけど、とにかくなんかすごいぞ。」

使ってみると、ミニマップはめっちゃ便利。
**エラーのある箇所**や**差分の位置**が俯瞰で見れるのはすごいですね。

あと Sublime Text でもう一つ衝撃だったのは「Monokai」のシンタックスハイライトです。
「こんなに見やすくてポップなシンタックスハイライト、クソ羨ましい…」
と思って、急いで Vim の Monokai プラグインを探した記憶が蘇ってきました。
Sublime Text が初出じゃないのかもしれませんが、私の中では「Sublime Text と言えば Monokai」「Monokai と言えば Sublime Text」くらい圧倒的な印象があります。

> Text Editing, Done Right
>
> [公式サイト](https://www.sublimetext.com/) から引用

そう、動作が軽いのも印象的でした。

| 項目名           |                                                                                       |
| ---------------- | ------------------------------------------------------------------------------------- |
| 読み方           | サブライム テキスト                                                                   |
| 公式サイト       | https://www.sublimetext.com/                                                          |
| 公式リポジトリ   | -                                                                                     |
| Wikipedia        | https://ja.wikipedia.org/wiki/Sublime_Text                                            |
| 料金             | 無料                                                                                  |
| 種別             | GUI テキストエディタ                                                                  |
| 対応 OS          | Windows,macOS,Linux                                                                   |
| 開発言語         | C++, Python ([Wikipedia](https://ja.wikipedia.org/wiki/Sublime_Text)) から引用        |
| 初版リリース     | 2008 年 1 月 18 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Sublime_Text) から引用) |
| 最終アップデート | 2021 年 12 月 21 日                                                                   |

### PyScripter

https://github.com/pyscripter/pyscripter

> PyScripter is a free and open-source Python Integrated Development Environment (IDE) created with the ambition to become competitive in functionality with commercial Windows-based IDEs available for other languages.
>
> [GitHub の README](https://github.com/pyscripter/pyscripter) から引用

その名からもキャッチコピーからも明確なように、昔から人気のある Python 用の IDE のようです。

エディタ開発では珍しい？ Pascal で作られたエディタ。
GitHub の [リリース](https://github.com/pyscripter/pyscripter/tags?after=v2.6.0) リストを見ると、歴史は古く 2006 年ごろにはすでに公開されていたようです。

| 項目名           |                                                 |
| ---------------- | ----------------------------------------------- |
| 読み方           | パイスクリプター                                |
| 公式サイト       | https://github.com/pyscripter/pyscripter        |
| 公式リポジトリ   | https://github.com/pyscripter/pyscripter        |
| Wikipedia        | https://en.wikipedia.org/wiki/PyScripter (英語) |
| 料金             | 無料                                            |
| 種別             | GUI テキストエディタ                            |
| 対応 OS          | Windows                                         |
| 開発言語         | Pascal                                          |
| 初版リリース     | ?                                               |
| 最終アップデート | 2021 年 10 月 21 日                             |

### Brackets

https://brackets.io/

> Brackets は、オープンソースのソースコードエディタである。 アドビにより開発され、4 か月ごとの定期リリースが行われていたが、2021 年 9 月 1 日をもってアドビによるサポートは終了した。
>
> 現在はコミュニティによる開発が行われている。
>
> [Wikipedia](https://ja.wikipedia.org/wiki/Brackets) から引用

Brackets の存在は知っていてインストールしたこともありましたが、Adobe で開発されていたのを初めて知りました。

> Brackets は、各種専用ビジュアルツールとプリプロセッサーをサポートし、ブラウザーの設計が簡単にできる最新のテキストエディターです。Web デザイナーやフロントエンドのデベロッパーのために、ゼロから開発されたものです。
>
> [公式サイト](https://brackets.io/) から引用

見た目の雰囲気は、サイドバー、メインエディタとシンプルな構成ですが、HTML, JavaScript, CSS をコーディングすることに特化している印象があります。

| 項目名           |                                                                                   |
| ---------------- | --------------------------------------------------------------------------------- |
| 読み方           | ブラケッツ                                                                        |
| 公式サイト       | https://brackets.io/                                                              |
| 公式リポジトリ   | https://github.com/brackets-cont/brackets                                         |
| Wikipedia        | https://ja.wikipedia.org/wiki/Brackets                                            |
| 料金             | 無料                                                                              |
| 種別             | GUI テキストエディタ                                                              |
| 対応 OS          | Windows,macOS,Linux                                                               |
| 開発言語         | JavaScript                                                                        |
| 初版リリース     | 2014 年 11 月 4 日 ([Wikipedia](https://ja.wikipedia.org/wiki/Brackets) から引用) |
| 最終アップデート | 2022 年 7 月 12 日                                                                |

### Komodo Edit

https://www.activestate.com/products/komodo-edit/

> Komodo Edit is a great editor if you’re looking for something powerful, yet simple.
> Komodo IDE provides more robust functionality such as debugging, unit testing, code refactoring and code profiling. Download Komodo IDE – now available for free as part of the ActiveState Platform.

シンプルな機能の Komodo Edit とは別に有料で機能強化版の Komodo IDE があるようです。
[Docker](https://github.com/Komodo/KomodoEdit#building-with-docker) イメージがあるのは珍しいですね。

| 項目名           |                                                                           |
| ---------------- | ------------------------------------------------------------------------- |
| 読み方           | コモドエディット？                                                        |
| 公式サイト       | https://www.activestate.com/products/komodo-edit/                         |
| 公式リポジトリ   | https://github.com/Komodo/KomodoEdit                                      |
| Wikipedia        | https://en.wikipedia.org/wiki/Komodo_Edit (英語)                          |
| 料金             | 無料                                                                      |
| 種別             | GUI テキストエディタ                                                      |
| 対応 OS          | Windows,macOS,Linux                                                       |
| 開発言語         | Python, C                                                                 |
| 初版リリース     | 2007 年 ([Wikipedia](https://en.wikipedia.org/wiki/Komodo_Edit) から引用) |
| 最終アップデート | 2020 年 2 月 10 日                                                        |

## オンライン

最近はオフラインのエディタだけではなく、オンラインの開発環境も整備されてきているようです。

### Codespaces

https://github.co.jp/features/codespaces

> 超高速で構築するクラウド開発環境
>
> わずか数秒で起動するハイパフォーマンスの VM がサポートする Visual Studio Code
>
> [公式サイト](https://github.co.jp/features/codespaces) から引用

GitHub 社が提供するクラウド開発環境。
未来～！フューチャーを感じますね！

GitHub 社がマイクロソフト社に買収されてから、GitHub と VSCode との連携が凄まじいです。
Codespaces はブラウザからも利用可能ですが、VSCode に慣れている人なら devcontainer で利用するのが良さそう。

| 項目名           |                                                                                      |
| ---------------- | ------------------------------------------------------------------------------------ |
| 読み方           | コードスペーシズ                                                                     |
| 公式サイト       | https://github.co.jp/features/codespaces                                             |
| 公式リポジトリ   | -                                                                                    |
| Wikipedia        | -                                                                                    |
| 料金             | 有料                                                                                 |
| 種別             | GUI (デスクトップ、ブラウザ) クラウド開発環境                                        |
| 対応 OS          | Windows,macOS,Linux                                                                  |
| 開発言語         | ?                                                                                    |
| 初版リリース     | 2021 年 8 月 11 日 ([公式サイト](https://github.co.jp/features/codespaces) から引用) |
| 最終アップデート | -                                                                                    |

### Cloud Shell

https://cloud.google.com/shell?hl=ja

> ブラウザを使って、インフラストラクチャ管理とアプリケーション開発ができます。
>
> [公式サイト](https://cloud.google.com/shell?hl=ja) から引用

Google 社が提供する GCP 上のクラウド実行環境。
[この記事](https://www.publickey1.jp/blog/20/googlevscodeeclipse_theiagoogle_cloud_shell.html) を見ると、エディタ自体は「Eclipse Theia」が使われているようです。

| 項目名           |                                      |
| ---------------- | ------------------------------------ |
| 読み方           | クラウドシェル                       |
| 公式サイト       | https://cloud.google.com/shell?hl=ja |
| 公式リポジトリ   | -                                    |
| Wikipedia        | -                                    |
| 料金             | 有料                                 |
| 種別             | GUI (ブラウザ) クラウド開発環境      |
| 対応 OS          | Windows,macOS,Linux                  |
| 開発言語         | ?                                    |
| 初版リリース     | 2016 年 10 月                        |
| 最終アップデート | -                                    |

### Cloud9

https://aws.amazon.com/jp/cloud9/

> コードを記述、実行、デバッグできるクラウドベースの統合開発環境 (IDE)
>
> [公式サイト](https://aws.amazon.com/jp/cloud9/) から引用

Amazon 社が提供するクラウド開発環境。
元々 Cloud9 を開発していた Cloud9 社を Amazon 社が買収したことによって AWS のサービスの一部となったようです。
AWS の豊富すぎる環境を使って、手元のマシンリソースの制限を超えてガンガン CPU を使い倒したいなら！（使った分だけ料金はかかります

| 項目名           |                                      |
| ---------------- | ------------------------------------ |
| 読み方           | クラウドナイン                       |
| 公式サイト       | https://aws.amazon.com/jp/cloud9/    |
| 公式リポジトリ   | -                                    |
| Wikipedia        | https://ja.wikipedia.org/wiki/Cloud9 |
| 料金             | 有料                                 |
| 種別             | GUI (ブラウザ) クラウド開発環境      |
| 対応 OS          | Windows,macOS,Linux                  |
| 開発言語         | JavaScript                           |
| 初版リリース     | 2016 年 7 月 14 日                   |
| 最終アップデート | -                                    |

### Koding

https://www.koding.com/

> Modern Development Environment Delivered.
> Koding lets your organization create and share fully automated dev environments on any infrastructure for modern distributed applications, micro-services and containers.
>
> [公式サイト](https://www.koding.com/) から引用

使ったことがないので利用方法がピンときていないのですが、ローカルにクローンした任意の Git リポジトリから docker compose 経由でクラウド環境に繋いで使う？
[ここ](https://matagotch.hatenablog.com/entry/2015/10/22/121309) を見た感じだと、ブラウザでオンラインのエディタにアクセスしてコーディングするのがメインの使い方なんですかね。

[公式リポジトリ](https://github.com/koding/koding) を見ると、最終コミットが 4 years ago, 5 years ago, ... CoffeeScript ... となっていて、若干の不安が…

| 項目名           |                                                                        |
| ---------------- | ---------------------------------------------------------------------- |
| 読み方           | コーディング？                                                         |
| 公式サイト       | https://www.koding.com/                                                |
| 公式リポジトリ   | https://github.com/koding/koding                                       |
| Wikipedia        | -                                                                      |
| 料金             | 有料                                                                   |
| 種別             | GUI (ブラウザ) クラウド開発環境                                        |
| 対応 OS          | Windows,macOS,Linux                                                    |
| 開発言語         | Go                                                                     |
| 初版リリース     | 2012 年 1 月 16 日 ([Wikipedia](https://fr.wikipedia.org/wiki/Koding)) |
| 最終アップデート | -                                                                      |

### Codeanywhere

https://codeanywhere.com/

> Our Cloud IDE saves you time by deploying a development environment in seconds, enabling you to code, learn, build, and collaborate on your projects.
>
> [公式サイト](https://codeanywhere.com/) から引用

コラボレーションツールでしょうか。
公式サイトトップの紹介動画を見た感じ、コーディングしながらエディタ上でチャットができたり、画面のシェアができたりするようです。
これでオンラインミーティングもできたら、他のツール群を一網打尽にできそうですね。

| 項目名           |                                                                                       |
| ---------------- | ------------------------------------------------------------------------------------- |
| 読み方           | コードエニウェア                                                                      |
| 公式サイト       | https://codeanywhere.com/                                                             |
| 公式リポジトリ   | https://github.com/koding/koding                                                      |
| Wikipedia        | -                                                                                     |
| 料金             | 有料                                                                                  |
| 種別             | GUI (ブラウザ) クラウド開発環境                                                       |
| 対応 OS          | Windows,macOS,Linux                                                                   |
| 開発言語         | Java                                                                                  |
| 初版リリース     | 2013 年 5 月 22 日 ([Wikipedia](https://en.wikipedia.org/wiki/Codeanywhere) から引用) |
| 最終アップデート | -                                                                                     |

### codenvy(Eclipse Che)

https://github.com/codenvy/codenvy

> Cloud workspaces for development teams. One-click Docker environments to create workspaces with production runtimes. Team onboarding and collaboration with workspace automation and permissions letting devs sync their desktop IDE or use our gorgeous Eclipse Che IDE. Workspace platform for DevOps to manage workspaces at scale with programmable and customizable infrastructure.
>
> [公式リポジトリ](https://github.com/codenvy/codenvy) から引用

こちらもクラウド開発環境です。
Eclipse Che という IDE と連携できるということですかね。
Eclipse はいろんなプロダクトリリースしてるんですね…

| 項目名           |                                                                                 |
| ---------------- | ------------------------------------------------------------------------------- |
| 読み方           | コードエンビー？                                                                |
| 公式サイト       | https://github.com/codenvy/codenvy                                              |
| 公式リポジトリ   | https://github.com/koding/koding                                                |
| Wikipedia        | -                                                                               |
| 料金             | 無料                                                                            |
| 種別             | GUI (ブラウザ) クラウド開発環境                                                 |
| 対応 OS          | Windows,macOS,Linux                                                             |
| 開発言語         | Java                                                                            |
| 初版リリース     | 2014 年 10 月 ([Wikipedia](https://en.wikipedia.org/wiki/Eclipse_Che) から引用) |
| 最終アップデート | -                                                                               |

### PaizaCloud

https://paiza.cloud/ja/

> ブラウザを開くだけで
> エディタ、Web サーバ、DB 等の開発環境が整う クラウド開発環境 PaizaCloud クラウド IDE
>
> [公式サイト](https://paiza.cloud/ja/)

国産のクラウド開発環境サービスです。
Paiza といえば「プログラミングスキルチェック」が有名ですが、スキルチェックの出題と解答をオンラインで実施しているので、
クラウドの開発環境をサービスとして公開するのは必然であった気がします。

余談ですが、「プログラミングスキルチェック」ってめっちゃ緊張しません？
1 回しくじったら次は違う問題にトライし直さないとならないので、解答時のプレッシャーが半端無いっす…

| 項目名           |                                                                                                      |
| ---------------- | ---------------------------------------------------------------------------------------------------- |
| 読み方           | パイザクラウド                                                                                       |
| 公式サイト       | https://paiza.cloud/ja/                                                                              |
| 公式リポジトリ   | -                                                                                                    |
| Wikipedia        | https://ja.wikipedia.org/wiki/PaizaCloud                                                             |
| 料金             | 無料 (有料プランもあり)                                                                              |
| 種別             | GUI (ブラウザ) クラウド開発環境                                                                      |
| 対応 OS          | Windows,macOS,Linux                                                                                  |
| 開発言語         | ?                                                                                                    |
| 初版リリース     | 2017 年 12 月 5 日 ([PR TIMES](https://prtimes.jp/main/html/rd/p/000000035.000012063.html) から引用) |
| 最終アップデート | -                                                                                                    |

## 追記分

### Editor

https://github.com/jmigpin/editor

> Source code editor in pure Go.

Pure Go で書かれた、シンプルな見た目のエディタです。
実際にインストールして使ってみた感じ、最初は操作方法もよくわからないくらいのシンプルさで戸惑いましたが、
どうやらツールバーっぽいエリアに表示されているテキストボタン？上で右クリックをすると、次々とペインが開かれていって、フォルダツリーだったりファイルが開かれる仕組みのようです。
誤解を恐れずに例えるなら、[i3](https://i3wm.org/) などのタイル型ウィンドウマネージャのエディタ版、でしょうか。(i3 使ったことないので雰囲気で言ってます)
キーボードショートカットも README に書かれてありました。
プラグイン機構もあるようで、ツールとしてしっかり作られている印象です。

シンプルで機能が豊富なので、使い込んだら沼りそうな雰囲気を感じます。

| 項目名           |                                   |
| ---------------- | --------------------------------- |
| 読み方           | エディター                        |
| 公式サイト       | https://github.com/jmigpin/editor |
| 公式リポジトリ   | https://github.com/jmigpin/editor |
| Wikipedia        | -                                 |
| 料金             | 無料                              |
| 種別             | GUI テキストエディタ              |
| 対応 OS          | Windows,macOS,Linux               |
| 開発言語         | Go                                |
| 初版リリース     | 2020 年 1 月 3 日                 |
| 最終アップデート | 2022 年 7 月 26 日                |

### Codelobster

http://www.codelobster.com/

> CodeLobster IDE streamlines and simplifies the PHP development process. You don't need to keep in mind the names of functions, arguments, tags or their attributes -- we've implemented all these for you with autocomplete features for PHP, HTML, JavaScript and even CSS. And you can always get necessary help information by pressing F1 or using the special Help control.

> CodeLobster IDE は、PHP 開発プロセスを合理化し簡素化します。関数、引数、タグやその属性の名前を覚えておく必要はありません -- PHP、HTML、JavaScript、そして CSS のオートコンプリート機能により、これらすべてを実装しています。また、F1 キーを押すか、特別なヘルプコントロールを使用することで、いつでも必要なヘルプ情報を得ることができます。

PHP と Web 開発に特化しているエディタのようです。
PHP 使うなら HTML、JS、CSS はほぼ確実に一緒に触れる必要があるし、それだけに機能が絞られているのが良いですね。

| 項目名           |                                           |
| ---------------- | ----------------------------------------- |
| 読み方           | コードロブスター？                        |
| 公式サイト       | http://www.codelobster.com/               |
| 公式リポジトリ   | -                                         |
| Wikipedia        | https://en.wikipedia.org/wiki/Codelobster |
| 料金             | 有料                                      |
| 種別             | GUI テキストエディタ                      |
| 対応 OS          | Windows,macOS,Linux                       |
| 開発言語         | C++                                       |
| 初版リリース     | -                                         |
| 最終アップデート | 2023 年 2 月 9 日                         |

## 私にとっての最強のエディタ

2022 年時点で、エディタ迷子の方に私がオススメしたいエディタは「[Visual Studio Code (VSCode)](#visual-studio-code)」です。
オススメする理由としては以下の点を挙げさせていただきます。

- マルチプラットフォームで使えて、設定の共有が簡単。
- 使い方に困ってもドキュメントが整備されているし、言及しているブログが多い。
- プラグインが多くて、インストール・アンインストールが容易にできる。
- マイクロソフト社という巨大な企業が活発に開発しているので、安心感がある。
- マイクロソフト社が買収した GitHub との連携が強力。
- これから未来、クラウド開発環境が主流になってくるとしたら、Codespaces と VSCode の連携が期待できそう。

- マルチプラットフォームで使えて、設定の共有が簡単。
  が特に推したいポイントです。

私の場合は、例がちょっと極端ではありますが、ここ数年で MacBook Pro → デスクトップ PC で Ubuntu → デスクトップ PC で Windows (いまここ) という環境の変遷がありましたので、
特に設定の共有が簡単で、すぐに理想の状態が手に入るのはめちゃくちゃ体感が良いです。
もし仮に転職等で手元の環境が変わってしまうような場合でも、VSCode さえ使える職場であれば上記の理由で私は推しまくります。

## まとめ

以上 91 個のエディタを紹介させていただきました。
私にとっての最強のエディタは「Visual Studio Code」に決定しました！
あなたの最強のエディタは見つかりましたでしょうか。

2022 年現在で調査ができたエディタのみに絞ってもこれだけ存在します。調査から漏れているエディタもまだまだあると思います。

こんなに多いと「じゃぁ結局どのエディタがいいの？」となりそうですが、この際気になるエディタを片っ端からインストールして、触ってみるのが一番良いです。
有料のエディタもほとんどの場合は無料のお試し期間がありますので、見た目やアイコン、使いたくなる印象を得られるかなど、直感も大事な選ぶポイントです。
とにかくいろんなエディタに触れてみて欲しいです。

エディタを選ぶのは **楽しい** です。

みなさんが **推しエディタ** に巡り会えますように。
