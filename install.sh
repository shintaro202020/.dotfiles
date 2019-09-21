### Git clone dotfiles Repository
### after install git, curl, vim
mkdir .vim && mkdir .vim/colors
ln -fs ~/.dotfiles/.zshrc ~/.zshrc
ln -fs ~/.dotfiles/.vimrc ~/.vimrc
ln -fc ~/.dotfiles/.vim/colors ~/.vim/colors
source ~/.zshrc
pyenv install 3.7.4
pyenv global 3.7.4

pip install --user pipenv

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"


