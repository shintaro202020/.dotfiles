zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt' \
  'syntax-highlighting' \
  'history-substring-search' \
  'autosuggestions' \
  'git'

add in 
cd
git clone https://github.com/sindresorhus/pure.git
cd pure
fpath=("$ZDOTDIR/.zfunctions" $fpath)
sudo ln -s "$PWD/pure.zsh" "$ZDOTDIR/.zfunctions/prompt_pure_setup"
sudo ln -s "$PWD/async.zsh" "$ZDOTDIR/.zfunctions/async"

# Change color of branch name
zsh+Preztoのテーマ等をいじった話 - Qiita
https://qiita.com/sakurasou/items/10156a46fb7e2d1c300f

vim ~/.dotfiles/zsh/.zprezto/modules/prompt/functions/prompt_pure_setup

