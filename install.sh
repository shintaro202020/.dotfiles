### Git clone dotfiles Repository
### after install git, curl, vim
mkdir .vim && mkdir .vim/colors

### Set zsh Root Directory
echo 'export ZDOTDIR=$HOME/.dotfiles/.zsh' >> ~/.zshenv
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
echo "source \"${ZDOTDIR:-$HOME}/.zshcommonrc\"" >>! ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${ZDOTDIR:-$HOME}/.zshcommonlogout" >>! ${ZDOTDIR:-$HOME}/.zlogout
source ~/.dotfiles/.zsh/.zshrc

### Set Vim
ln -fs ~/.dotfiles/.vimrc ~/.vimrc
ln -fs ~/.dotfiles/.vim/colors ~/.vim/colors 

pyenv install 3.7.4
pyenv global 3.7.4

pip install --user pipenv

