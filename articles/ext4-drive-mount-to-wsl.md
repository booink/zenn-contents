---
title: "【Windows】ext4の物理ディスクをwslにマウントする手順"
emoji: "🙆"
type: "tech" # tech: 技術記事 / idea: アイデア
topics: ["Windows", "wsl", "ext4"]
published: true
---

## これはなに

開発に使うメインマシンを Windows にしました。
元々 Linux (Ubuntu) で開発していたときに、Git リポジトリをクローンして配置するための SSD ディスクを分けていたので、
その資産を、何もいじらず Windows で使用できないか、と思って試行錯誤したログのような記事です。

## wsl にマウントするのはなぜ

Windows は、ファイルやディレクトリ（フォルダ）に「アクセス権限」をつけることは可能ですが、Linux のパーミッション設定とは別物なので、何も考えずに Windows 内にファイルを放り込むと、全て 777 扱いになります。（確か 777 になってたはず。半年前なので若干忘れた‥）
しかし wsl は Linux なので、wsl を動かしてその中でディスクをマウントすれば、パーミッションやシンボリックリンクなど、何も手を加えずに同じ環境が整えられるため、この方法を選びました。
他にもやり方があるかもしれません。もし知っていたら教えていただけると嬉しいです。

## 手順

以下は、マウントしたいディスクのファイルシステムが `ext4` でフォーマットされていることが前提に話を進めます。

### wslをインストールする。

https://aka.ms/wslstorepage
https://www.microsoft.com/store/productId/9P9TQF7MRM4R

### Ubuntuをインストールする。

wsl上で動かすLinuxディストリビューションをインストールします。
自分の環境では [Ubuntu 20.04.4 LTS](https://www.microsoft.com/store/productId/9MTTCL66CPXJ) をインストールしました。

https://www.microsoft.com/store/productId/9PN20MSR04DW
https://www.microsoft.com/store/productId/9MTTCL66CPXJ
https://www.microsoft.com/store/productId/9PNKSF5ZN4SW
https://www.microsoft.com/store/productId/9PKR34TNCV07
https://www.microsoft.com/store/productId/9NVGTG6752JM
https://www.microsoft.com/store/productId/9MZ3D1TRP8T1
https://www.microsoft.com/store/productId/9NMQXWVJJSZJ
https://www.microsoft.com/store/productId/9P06H18WXBVP
https://www.microsoft.com/store/productId/9P06H18WXBVP
https://www.microsoft.com/store/productId/9PGKJC9GPP2S
https://www.microsoft.com/store/productId/9MSVKQC78PK6

### 管理者権限でPowerShellを起動する。

PowerShellを検索して、`Windows PowerShell` にマウスを合わせて右クリックをすると `管理者として実行` の選択肢が表示されるので、`管理者として実行` をクリックします。

![](https://storage.googleapis.com/zenn-user-upload/eb5fde516604-20220409.png)


### ext4 でフォーマットされたディスクを WSL 2 にマウントする。

参考: 
https://docs.microsoft.com/ja-jp/windows/wsl/wsl2-mount-disk
https://touch-sp.hatenablog.com/entry/2021/12/23/001906

Windows で使用可能なディスクの一覧を表示するには、管理者権限のPowerShellで次を実行します。

```PowerShell
GET-CimInstance -query "SELECT * from Win32_DiskDrive"
```

```PowerShell:結果
PS C:\Windows\system32> GET-CimInstance -query "SELECT * from Win32_DiskDrive"

DeviceID           Caption                             Partitions Size          Model
--------           -------                             ---------- ----          -----
\\.\PHYSICALDRIVE6 Generic- Multiple Reader USB Device 0                        Generic- Multiple Reader USB Device
\\.\PHYSICALDRIVE3 SPCC Solid State Disk               2          512105932800  SPCC Solid State Disk
\\.\PHYSICALDRIVE1 CT2000MX500SSD1                     2          2000396321280 CT2000MX500SSD1
\\.\PHYSICALDRIVE2 Samsung SSD 860 QVO 2TB             1          2000396321280 Samsung SSD 860 QVO 2TB
\\.\PHYSICALDRIVE4 SPCC Solid State Disk               1          128034708480  SPCC Solid State Disk
\\.\PHYSICALDRIVE0 Colorful SL500 640GB                1          640132416000  Colorful SL500 640GB
\\.\PHYSICALDRIVE5 SPCC Solid State Disk               2          128034708480  SPCC Solid State Disk


PS C:\Windows\system32>
```

マウントしたいディスクの `DeviceID` をコピーしておきます。
  * ディスクの枚数によって `\\.\PHYSICALDRIVE1` 末尾の数字が変わります。 `Caption` や `Size` の情報でマウントしたいディスクを判別します。
  * 以下は末尾の数字が `4` (`\\.\PHYSICALDRIVE4`) であるとして話を進めます。(私が今回マウントしようとしているため)

次にディスクをマウントします。`Partitions` の列の数字によって、手順が異なります。

#### `Partitions` が `0` の場合

管理者権限のPowerShellで次を実行します。

```PowerShell
wsl --mount \\.\PHYSICALDRIVE4
```

```PowerShell:結果
PS C:\Windows\system32> wsl --mount \\.\PHYSICALDRIVE4
ディスク \\.\PHYSICALDRIVE4 は、名前 'PHYSICALDRIVE4' で正常にマウントされました。マウントポイントは、自動マウント設定が指すパス (既定: /mnt/wsl) の下にあります。
ディスクをアンマウントしてデタッチするには、'wsl --unmount \\.\PHYSICALDRIVE4' を実行します。
PS C:\Windows\system32>
```

#### `Partitions` が `1` 以上の場合

まず管理者権限のPowerShellで次を実行してディスクを認識させます。

```PowerShell
wsl --mount \\.\PHYSICALDRIVE4 --bare
```

```PowerShell:結果
PS C:\Windows\system32> wsl --mount \\.\PHYSICALDRIVE4 --bare
PS C:\Windows\system32>
```

次に wsl でパーティション番号を確認します。

```bash
lsblk
```

```bash:結果
booink@booink:/mnt$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 331.6M  1 loop /mnt/wsl/docker-desktop/cli-tools
loop1    7:1    0 302.9M  1 loop
sda      8:0    0   256G  0 disk
sdb      8:16   0   256G  0 disk
sdc      8:32   0   256G  0 disk /mnt/wsl/docker-desktop/docker-desktop-proxy
sdd      8:48   0   256G  0 disk /mnt/wsl/docker-desktop-data/isocache
sde      8:64   0   256G  0 disk /
sdf      8:80   0 119.2G  0 disk
└─sdf1   8:81   0 119.2G  0 part
booink@booink:/mnt$
```

wsl上では `sdf` としてディスクが認識されているようです。
`TYPE` が `part` になっている `sdf1` が今回マウントしたいパーティションです。

最後に管理者権限のPowerShellでパーティションをマウントします。

```PowerShell
wsl --mount \\.\PHYSICALDRIVE4 --partition 1
```

```PowerShell:結果
PS C:\Windows\system32> wsl --mount \\.\PHYSICALDRIVE4 --partition 1
ディスク \\.\PHYSICALDRIVE4 は、名前 'PHYSICALDRIVE4p1' で正常にマウントされました。マウントポイントは、自動マウント設定が指すパス (既定: /mnt/wsl) の下にあります。
ディスクをアンマウントしてデタッチするには、'wsl --unmount \\.\PHYSICALDRIVE4' を実行します。
PS C:\Windows\system32>
```

無事マウントされました。
wsl で確認します。

```bash
lsblk
```

```bash:結果
booink@booink:/mnt$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0 331.6M  1 loop /mnt/wsl/docker-desktop/cli-tools
loop1    7:1    0 302.9M  1 loop
sda      8:0    0   256G  0 disk
sdb      8:16   0   256G  0 disk
sdc      8:32   0   256G  0 disk /mnt/wsl/docker-desktop/docker-desktop-proxy
sdd      8:48   0   256G  0 disk /mnt/wsl/docker-desktop-data/isocache
sde      8:64   0   256G  0 disk /
sdf      8:80   0 119.2G  0 disk
└─sdf1   8:81   0 119.2G  0 part /mnt/wsl/PHYSICALDRIVE4p1
booink@booink:/mnt$
```

`/mnt/wsl/PHYSICALDRIVE4p1` にマウントされています。

### Windows 起動時にマウントされるようにする。

参考:
https://pc-karuma.net/windows-10-task-schedule-without-uac-prompt/

起動時にディスクをマウントするには管理者権限が必要なので、タスクスケジューラを設定していきます。

![](https://storage.googleapis.com/zenn-user-upload/d978aad4475c-20220409.png)

1. ドックの検索アイコンをクリックして、
2. テキスト入力フォームに「タスクスケジューラ」と入力して、
3. サジェストされたタスクスケジューラをクリックします。


![](https://storage.googleapis.com/zenn-user-upload/a7d88ae9dbce-20220409.png)
タスクスケジューラが起動したら、
1. 左のボックスの「タスク スケジューラ ライブラリ」を選択して、
2. 右のボックスの「タスクの作成…」をクリックします。

![](https://storage.googleapis.com/zenn-user-upload/75ecb0c7dc56-20220409.png)
タスクの作成ウィンドウの「全般」タブには
* 「名前(M):」 に適当な名前を入力します。今回は ext4 ファイルシステムのドライブをマウントするので「MountExt4Drive」と命名しました。
* 下部の「最上位の特権で実行する(I)」のチェックをONにします。

![](https://storage.googleapis.com/zenn-user-upload/b4aa3f10074c-20220409.png)
タスクの作成ウィンドウの「トリガー」タブでは「新規(N)…」をクリックします。

![](https://storage.googleapis.com/zenn-user-upload/91fae204d540-20220409.png)
新しいトリガーウィンドウでは、
* 「タスクの開始(G):」のプルダウンメニューを「ログオン時」に変更して、
* 「特定のユーザー(C):」のラジオボタンをONにします。
* 「OK」をクリックします。

![](https://storage.googleapis.com/zenn-user-upload/2b455390f3b1-20220409.png)

タスクの作成ウィンドウの「操作」タブでも「新規(N)…」をクリックします。
![](https://storage.googleapis.com/zenn-user-upload/b36dbbdd3b1c-20220409.png)
新しい操作ウィンドウでは、
* 「設定」「プログラム/スクリプト(P):」に `wsl` を入力して、
* 「引数の追加(オプション)(A):」には `--mount \\.\PHYSICALDRIVE4` を入力します。(`Partitions` が `1` 以上の場合は `--mount \\.\PHYSICALDRIVE4 --partition {n}` の `{n}` にパーティションの番号で置き換えて入力します。)
* 「OK」をクリックします。

![](https://storage.googleapis.com/zenn-user-upload/23b3dd8c799e-20220409.png)
タスクの作成ウィンドウの「条件」タブでは
* 「電源」→「コンピューターを AC 電源で使用している場合のみタスクを開始する(P)」のチェックを OFF にします。


最後に「OK」ボタンをクリックしで設定が完了です。

![](https://storage.googleapis.com/zenn-user-upload/d85fb82326be-20220409.png)

