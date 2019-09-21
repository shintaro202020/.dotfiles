### Git clone dotfiles Repository
### after install git, curl, vim
DOTPATH=~/.dotfiles 
git clone git@github.com:Shintaro0920/.dotfiles.git DOTPATH
chsh -s $(which zsh)
ln -fs ~/.dotfiles/.zshrc ~/.zshrc
ln -fs ~/.dotfiles/.vimrc ~/.vimrc
pyenv install 3.7.4
pyenv global 3.7.4

pip install --user pipenv


