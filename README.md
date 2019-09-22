# Install 
## Automatically Install
```
git clone git@github.com:Shintaro0920/.dotfiles.git ~/.dotfiles
source ~/.dotfiles/install.sh 
```
## Manually Install

### Create vim directory and root zsh directory
```
mkdir .vim && mkdir .vim/colors
export ZDOTDIR=$HOME/.dotfiles/.zsh
```

### Install pure
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
```

### Setup zsh Root Directory 
```
echo '### Setup zsh Root Directory \nexport ZDOTDIR=$HOME/.dotfiles/.zsh' >>! ${ZDOTDIR:-$HOME}/.zshrc
```

### Setup Pure
```
sed -i '.bak' "s/\'sorin\'/\'pure\'/g" $ZDOTDIR/.zpreztorc
mv -f $ZDOTDIR/.zpreztorc.bak $ZDOTDIR/.zpreztorc
sed -i '.bak' -e "s/\'prompt\'/  \'syntax-highlighting\' \\\\ \'$'\n  \'history-substring-search\' \\\\ \'$'\n  \'autosuggestions\' \\\\ \'$'\n  \'prompt\'/g" $ZDOTDIR/.zpreztorc 
mv -f $ZDOTDIR/.zpreztorc.bak $ZDOTDIR/.zpreztorc 
echo 'autoload -U promptinit; promptinit \nprompt pure' >>! ${ZDOTDIR:-$HOME}/.zshrc
```

### Setup zshrc and zlogout
```
echo "source ${ZDOTDIR:-$HOME}/.zshcommonrc" >>! ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${ZDOTDIR:-$HOME}/.zshcommonlogout" >>! ${ZDOTDIR:-$HOME}/.zlogout
```

### Setup Vim
```
ln -fs ~/.dotfiles/.vim/.vimrc ~/.vimrc
ln -fs ~/.dotfiles/.vim/colors ~/.vim/
```

### Install pyenv and pipenv
```

```
