## Manually Install
### git setup
git config --global user.email "yoshidashintaro0920@gmail.com"
git config --global user.name  "Shintaro Yoshida" 

### git clone 
git clone https://github.com/sht47/.dotfiles.git

### Create vim directory and root zsh directory
### Ubuntu Version
mkdir ~/.vim 
export DOTDIR=$HOME/.dotfiles

### Setup Vim
ln -fs ~/.dotfiles/.vim/.vimrc ~/.vimrc
ln -fs ~/.dotfiles/.vim/colors ~/.vim/

# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

### Setup Fish 
mkdir ~/.config
mkdir ~/.config/fish
ln -fs ~/.dotfiles/.fish/config.fish ~/.config/fish/config.fish
sudo apt-get install vim fish

chsh -s /usr/bin/fish
