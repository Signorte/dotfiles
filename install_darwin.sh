#!/bin/bash

echo "uname -m" >> $HOME/.zshrc

echo Skip to install Docker because it has not supported arm64 based m1 mac yet
# echo Install Docker
# VERSION=$(lsb_release -d | awk '{print $3}')

# if [ "$VERSION" == "20.04" ]; then
#   # https://linuxconfig.org/how-to-install-docker-on-ubuntu-20-04-lts-focal-fossa
#   sudo apt install docker.io
#   sudo systemctl enable --now docker
#   sudo usermod -aG docker Signorte
# else
#   curl https://get.docker.com | sh
# fi

echo install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

$echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> $HOME/.zprofile
$eval $(/opt/homebrew/bin/brew shellenv)


echo brew & update
# git -C "/usr/local/Homebrew/Library/Taps/homebrew/homebrew-core" fetch --unshallow
# git -C "/usr/local/Homebrew/Library/Taps/homebrew/homebrew" fetch --unshallow
brew update

echo Install fish
brew install fish 
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells

echo Setup fish
echo Install fisher
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo Install peco
brew install peco

echo Install ghq
brew install ghq

cd fisher && fish install.fish
cd ..

echo Install hub
brew install hub
echo "alias g='cd $(ghq root)/$(ghq list | peco)'" >> ~/.zshrc
echo "alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'" >> ~/.zshrc

echo Install go
brew install go

# echo install awscli
# brew install awscli
echo install tig
brew install tig
echo Install poetry
brew install poetry
echo Install pyenv
brew install pyenv

# echo install ffmpeg
# brew install ffmpeg

echo install nodebrew
brew install nodebrew
nodebrew setup
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zprofile
source ~/.bash_profile
nodebrew install-binary stable
nodebrew use stable

echo install desktop applications # CAUTION: this process makes APP unintalled firstly and reinstalled it.
brew install google-chrome
brew install firefox
brew install zoomus
brew install slack
brew install figma
brew install amazon-music
brew install appcleaner
brew install tableau
brew install visual-studio-code
brew install clipy
brew install bettertouchtool
# [not supported] brew install bettersnaptool 
# [not supported] brew install camtwist
brew install cheatsheet
brew install the-unarchiver
# brew install karabiner-elements
brew install line
brew install sequel-pro
brew install postman


echo Install Go
curl -L https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -o go.tar.gz
sudo tar -C /usr/local -xzf go.tar.gz
rm -rf go.tar.gz

mkdir -p ~/dev/go
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.zprofile
echo "export GOPATH=~/dev/go" >> ~/.zprofile
echo "export GOBIN=\$GOPATH/bin" >> ~/.zprofile
echo "export PATH=\$PATH:\$GOBIN" >> ~/.zprofile
source  ~/.zprofile


echo Install tmux
sudo apt install git automake bison build-essential pkg-config libevent-dev libncurses5-dev
ghq get https://github.com/tmux/tmux
cd $GOPATH/src/github.com/tmux/tmux
./autogen.sh
./configure --prefix=/usr/local
make
sudo make install

echo Setup tmux
cd ../tmux && bash install.sh


echo Clone my dotfiles
ghq get github.com/Signorte/dotfiles
cd $GOPATH/src/github.com/Signorte/dotfiles

# echo Chage default shell to fish 
# chsh -s /usr/local/bin/fish






