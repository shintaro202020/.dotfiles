### Git clone dotfiles Repository
### after install git, curl, vim
chsh -s $(which zsh)
ln -fs ~/.dotfiles/.zshrc ~/.zshrc
ln -fs ~/.dotfiles/.vimrc ~/.vimrc
ln -fc ~/.dotfiles/vim/colors ~/.vim/colors
source ~/.zshrc
pyenv install 3.7.4
pyenv global 3.7.4

pip install --user pipenv


