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
