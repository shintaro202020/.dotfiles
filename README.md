## Install Command
git clone git@github.com:Shintaro0920/.dotfiles.git
source ~/.dotfiles/install.sh

## Manually Install
mv ~/.vimrc ~/.dotfiles
mv ~/.vim/colors ~/.dotfiles
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/colors ~/.vim
