# Setup
```
chsh -s $(which zsh)
cd $HOME
git clone git@github.com:Shintaro0920/.dotfiles.git
echo 'export ZDOTDIR=$HOME/.dotfiles/zsh' > .zshenv
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
echo 'source  "${ZDOTDIR:-$HOME}/.zshcommonrc"' >> "${ZDOTDIR:-$HOME}/.zshrc
```

### npm install 
```
sudo apt install nodejs 
sudo apt install npm
npm install --global pure-prompt
```

### add zsh file in .zshrc
```
echo "source \"${ZDOTDIR:-$HOME}/.zshcommonrc\"" >>! ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${ZDOTDIR:-$HOME}/.zshcommonlogout" >>! ${ZDOTDIR:-$HOME}/.zlogout
```


