### Git clone dotfiles Repository
### after install git, curl, vim and set zsh
mkdir .vim && mkdir .vim/colors

### Create vim directory and root zsh directory
mkdir .vim && mkdir .vim/colors
export ZDOTDIR=$HOME/.dotfiles/.zsh

### install pure
git clone https://github.com/sindresorhus/pure.git "${ZDOTDIR:-$HOME}/.pure"
fpath+=(${ZDOTDIR:-$HOME}/.pure)

### install zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
echo 'export ZDOTDIR=$HOME/.dotfiles/.zsh' >>! ~/.zshenv

echo "source ${ZDOTDIR:-$HOME}/.zprezto/init.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

echo "source ${ZDOTDIR:-$HOME}/.zshcommonrc" >>! ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${ZDOTDIR:-$HOME}/.zshcommonlogout" >>! ${ZDOTDIR:-$HOME}/.zlogout

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
