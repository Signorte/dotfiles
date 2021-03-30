# My dotfiles
Setup dev and general environment
This dotfile is made for arm64 based mac and linux systems.

Using:
- Homebrew
- Fish [shell] 
- Fisher [fish shell plugin management tool]
- ghq [manage remote repository clones in specific one directory]
 - fish-ghq [fish shell plugin, launching ghq by Ctrl+g]
- peco [incremental search tool on terminal]
 - oh-my-fish/plugin-peco [fish shell plugin, using peco]

## How to use
1. Install Command Line Tools before running install.sh 
2. `sudo visudo` and add a line `user_name ALL=(ALL) NOPASSWD: ALL` for skip to enter password
3. Run `bash ./install.sh`
4. (option) `sudo visudo` and delete `user_name ALL=(ALL) NOPASSWD: ALL`

## Attention
This dotfile skips to install some packeages like Docker because they have not supported arm64 based m1 mac on stable versions yet.
So, install Docker manually.

## memo
It makes available to use shortcut commands below, 
(partially)
- `z browse directory from history`
- `hub browse` <!-- open expected github repository on browser -->
- `hub checkout http://github.com/~` <!-- make branch of expected Pull-Request, using PR's URL -->
- `hub fork` <!-- fork repository -->
- `hub pull-request` <!-- send PR -->
- `hub clone user-name/repo` <!-- clone repository -->
- `Ctrl + g` <!-- launch ghq on fish -->
- `Ctrl + r` <!-- filter history -->

### tmux key binds
- prefix + ?	キーバインド一覧
- prefix + s	セッションの一覧表示
- prefix + c	新規ウィンドウ作成・追加
- prefix + w	ウィンドウの一覧
- prefix + &	ウインドウの破棄
- prefix + n	次のウインドウへ移動
- prefix + p	前のウインドウへ移動
- prefix + |	左右にペイン分割
- prefix + -	上下にペイン分割
- prefix + h	左のペインに移動
- prefix + j	下のペインに移動
- prefix + k	上のペインに移動
- prefix + l	右のペインに移動
- prefix + H	ペインを左にリサイズ
- prefix + J	ペインを下にリサイズ
- prefix + K	ペインを上にリサイズ
- prefix + L	ペインを右にリサイズ
- prefix + x	ペインの破棄
- prefix + スペース	ペインのレイアウト変更
- prefix + Ctrl + o	ペインの入れ替え
- prefix + {	ペインの入れ替え(上方向)
- prefix + }	ペインの入れ替え(下方向)
- prefix + [	コピーモードの開始(カーソルキーで移動)
- prefix + v	コピー開始位置決定(viモード)
- prefix + y	コピー終了位置決定(viモード)
- prefix + Crtl + p	コピー内容の貼り付け

- prefix + [	コピーモード開始
- prefix + ]	コピーされた内容を貼り付ける(コピーモードを終了後)
    - space	コピー位置開始
    - Enter	ハイライトされた部分をコピーし、コピーモードを終了
    - q	コピーモードを終了
    - ESC または ctrl + {	ハイライトをキャンセル
    - Ctrl + u	上方に移動
    - Ctrl + d	下方に移動