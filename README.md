# Install 
## Automatically Install
```
git clone git@github.com:Shintaro0920/.dotfiles.git ~/.dotfiles
source ~/.dotfiles/install.sh 
or
/usr/bin/zsh ~/.dotfiles/ubuntu-install.sh
```

## Manually Install
### git setup
```
git config --global user.email "yoshidashintaro0920@gmail.com"
git config --global user.name  "Shintaro Yoshida" 
```

### git clone 
```
git clone git@github.com:Shintaro0920/.dotfiles.git ~/.dotfiles
```

### zshenv setup
```
echo "### Setup zsh Root Directory \nexport ZDOTDIR=$HOME/.dotfiles/.zsh" >>! ~/.zshenv
```

### Create vim directory and root zsh directory
```
mkdir .vim 
mkdir .vim && mkdir .vim/colors (on Ubuntu)
export ZDOTDIR=$HOME/.dotfiles/.zsh
export DOTDIR=$HOME/.dotfiles
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

### Setup zsh, dotfiles Root Directory 
```
echo "\n### Setup zsh Root Directory \nexport ZDOTDIR=$HOME/.dotfiles/.zsh" >>! ${ZDOTDIR:-$HOME}/.zshrc
echo "\n### Setup dotfiles Root Directory \nexport DOTDIR=$HOME/.dotfiles" >>! ${ZDOTDIR:-$HOME}/.zshrc 
```

### __Mac__ Setup Pure, syntax-highlighting, history-substring-search, autosuggestion
```
sed -i.bak "s/\'sorin\'/\'pure\'/g" $ZDOTDIR/.zpreztorc
mv -f $ZDOTDIR/.zpreztorc.bak $ZDOTDIR/.zpreztorc
sed -i.bak "s/\'prompt\'/  \'syntax-highlighting\' \'history-substring-search\' \'autosuggestions\' \'prompt\'/g" $ZDOTDIR/.zpreztorc 
mv -f $ZDOTDIR/.zpreztorc.bak $ZDOTDIR/.zpreztorc 
echo '\n###Setup Pure \nautoload -U promptinit; promptinit \nprompt pure' >>! ${ZDOTDIR:-$HOME}/.zshrc
```
### (__Ubuntu__ Setup Pure, syntax-highlighting, history-substring-search, autosuggestion)
```
sed -i.bak "s/\'sorin\'/\'pure\'/g" $ZDOTDIR/.zpreztorc
rm -f $ZDOTDIR/.zpreztorc.bak 
sed -i.bak "s/\'prompt\'/  \'syntax-highlighting\' \'history-substring-search\' \'autosuggestions\' \'prompt\'/g" $ZDOTDIR/.zpreztorc
rm -f $ZDOTDIR/.zpreztorc.bak 
echo '\n###Setup Pure \nautoload -U promptinit; promptinit \nprompt pure' >>! ${ZDOTDIR:-$HOME}/.zshrc
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
git clone https://github.com/pyenv/pyenv.git $DOTDIR/.pyenv
git clone https://github.com/pyenv/pyenv-virtualenv.git $DOTDIR/.pyenv/plugins/pyenv-virtualenv
```

### Reload Setup
```
source ~/.dotfiles/.zsh/.zshrc
```

### Install python
```
pyenv install 3.7.4
pyenv install 3.6.8
pyenv global 3.7.4
pip install --upgrade pip
pip install --user --upgrade pipenv
```

### Install atom
```
apm install --packages-file $DOTDIR/.atom/atomfile.txt
```
