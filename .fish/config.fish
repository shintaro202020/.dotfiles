##########################################
# Alias 
##########################################
alias bcu="brew cleanup"
alias bd="brew doctor"
alias bl="brew link"
alias bud="brew update"
alias bug="brew upgrade"

alias ca="conda activate"

alias db="docker build"
alias dcla="docker container ls -la"
alias dcpud="docker-compose up -d"
alias dcpd="docker-compose down"
alias decp="docker ecs compose"
alias deit="docker exec -it"
alias dis="docker images"
alias drmif="docker rmi -f"
alias drmf="docker rm -f"

alias g="git"
alias ga="git add"
alias gaa="git add *"
alias gagi="git add .gitignore"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gchd="git checkout dev"
alias gchm="git checkout master"
alias gcl="git clone"
alias gctm="git commit -m"
alias gi="git init"
alias gl1="git log --graph--date=short --decorate=short --pretty=format:'%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'"
alias gl2="git log --graph--all--decorate"
alias gm="git merge"
alias gpl="git pull"
alias gps="git push"
alias gpsuo="git push -u origin"
alias gpsuom="git push -u origin master"
alias grm="git rm"
alias grmc="git rm --cached"
alias grh="git reset --hard"
alias grhh="git reset --hard HEAD"
alias gs="git status"

alias l="ls"
alias ll="ls -l"
alias lla="ls -la"

alias mc="mkdir argv[1] && cd argv[1]"
alias mk="mkdir"

alias oaf="open -a Finder "

alias pyv="pyenv version"
alias pyvs="pyenv versions"

alias rmrf="rm -rf"

alias sc="source ~/.config/fish/config.fish"
alias sst="ssh thomas"

alias v="vim"
alias vc="vim ~/.config/fish/config.fish"
alias vgi="vim .gitignore"
alias vr="vim README.md"
alias vt="vim test.py"

alias 3="python"

##########################################
# Custom Function 
##########################################
function grmdel
    git rm (git ls-files --deleted)
end

##########################################
# PYTHON with pyenv 
##########################################
#set -U DOTDIR ~/.dotfiles
#set -U PYENV_ROOT $DOTDIR/.pyenv
#set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths
#set -Ux fish_user_paths $PYENV_ROOT/shims $fish_user_paths
#status --is-interactive; and pyenv init - | source
#status --is-interactive; and pyenv virtualenv-init - | source

#cd ~/Desktop
# set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
#set -Ux fish_user_paths "/usr/local/Homebrew/bin" $fish_user_paths


##########################################
# Anaconda Env 
##########################################
#set -Ux fish_user_paths "$HOME/opt/anaconda3/bin/" $fish_user_paths


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/shintaroyoshida/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

