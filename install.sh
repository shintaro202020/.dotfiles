### Git clone dotfiles Repository
### after install git, curl, vim
mkdir .vim && mkdir .vim/colors

### Set zsh Root Directory
echo 'export ZDOTDIR=$HOME/.dotfiles/.zsh' >> ~/.zshenv
source ~/.zshenv
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
donenpm install --global pure-prompt

echo "source \"${ZDOTDIR:-$HOME}/.zshcommonrc\"" >>! ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${ZDOTDIR:-$HOME}/.zshcommonlogout" >>! ${ZDOTDIR:-$HOME}/.zlogout
echo 'source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"' >> ${ZDOTDIR:-$HOME}/.zshrc

### Set Vim
ln -fs ~/.dotfiles/.vimrc ~/.vimrc
ln -fs ~/.dotfiles/.vim/colors ~/.vim/colors

### zsh pure
npm install --global pure-prompt

### pyenv 
pyenv install 3.7.4
pyenv global 3.7.4

pip install --user pipenv
source ~/.dotfiles/.zsh/.zshrc
