# Install 
## Automatically Install
```
git clone git@github.com:Shintaro0920/.dotfiles.git 
source ~/.dotfiles/install.sh 
```
## Manually Install

### Create vim directory and root zsh directory
```
mkdir .vim && mkdir .vim/colors
export ZDOTDIR=$HOME/.dotfiles/.zsh
```

### Set pure
```
git clone https://github.com/sindresorhus/pure.git "${ZDOTDIR:-$HOME}/.pure"
fpath+=(${ZDOTDIR:-$HOME}/.pure)
```

### Install zprezto
```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" 
echo 'export ZDOTDIR=$HOME/.dotfiles/.zsh' >>! ~/.zshenv
```

```
mv ~/.vimrc ~/.dotfiles 
mv ~/.vim/colors ~/.dotfiles 
ln -sf ~/.dotfiles/.vimrc ~/.vimrc 
ln -sf ~/.dotfiles/colors ~/.vim 
```
