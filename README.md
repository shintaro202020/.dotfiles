## Install 
### Automatically Install
```
git clone git@github.com:Shintaro0920/.dotfiles.git 
source ~/.dotfiles/install.sh 
```
### Manually Install
```
mkdir .vim && mkdir .vim/colors
export ZDOTDIR=$HOME/.dotfiles/.zsh
git clone https://github.com/sindresorhus/pure.git "${ZDOTDIR:-$HOME}/.pure"
fpath+=(${ZDOTDIR:-$HOME}/.pure)

### Set zsh Root Directory
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

mv ~/.vimrc ~/.dotfiles 
mv ~/.vim/colors ~/.dotfiles 
ln -sf ~/.dotfiles/.vimrc ~/.vimrc 
ln -sf ~/.dotfiles/colors ~/.vim 
```
