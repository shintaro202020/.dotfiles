##########################################
# Alias 
##########################################
alias bcu="brew cleanup"
alias bd="brew doctor"
alias bi="brew install"
alias bl="brew link"
alias bls="brew list"
alias bui="brew uninstall"
alias buii="brew uninstall --ignore-dependencies"
alias bud="brew update"
alias bug="brew upgrade"
alias bs="brew services"
alias bss="brew services start"

alias c="cat"
alias cda="conda activate"
alias cde="conda env"
alias cdel="conda env list"

alias vdcpfw0="vim ./docker-compose-winker-0.yml"
alias dcpfb0="   export COMPOSE_PROJECT_NAME=brake0 ; and docker-compose -f  docker-compose-brake-0.yml"
alias dcpfw0="  export COMPOSE_PROJECT_NAME=winker0 ; and docker-compose -f docker-compose-winker-0.yml"
alias dcpfb0ud=" export COMPOSE_PROJECT_NAME=brake0 ; and docker-compose -f  docker-compose-brake-0.yml up -d"
alias dcpfw0ud="export COMPOSE_PROJECT_NAME=winker0 ; and docker-compose -f docker-compose-winker-0.yml up -d"
alias dcpfb0d="  export COMPOSE_PROJECT_NAME=brake0 ; and docker-compose -f  docker-compose-brake-0.yml down"
alias dcpfw0d=" export COMPOSE_PROJECT_NAME=winker0 ; and docker-compose -f docker-compose-winker-0.yml down"

alias db="docker build"
alias dcl="docker container ls"
alias dcla="docker container ls -la"
alias dcp="docker-compose"
alias dcpud="docker-compose up -d"
alias dcpudb="docker-compose up -d --build"
alias dcpfc="docker-compose -f ./docker-compose-cpu.yml"
alias dcpfcud="docker-compose -f ./docker-compose-cpu.yml up -d"
alias dcpfcd="docker-compose -f ./docker-compose-cpu.yml down"
alias dcpd="docker-compose down"
alias decp="docker ecs compose"
alias deit="docker exec -it"
alias dis="docker images"
alias drmif="docker rmi -f"
alias drmf="docker rm -f"
alias dr="docker run"

alias gor="go run"
alias gorm="go run main.go"
alias got="go test"
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
alias gstp="git stash pop"
alias gsts="git stash save"

alias gl="gcloud"
alias jn="jupyter notebook"

alias l="ls"
alias ll="ls -l"
alias lla="ls -la"

alias mc="mkdir argv[1] && cd argv[1]"
alias mk="mkdir"

alias oaf="open -a Finder "
alias piiup="pip install --upgrade pip"
alias pii="pip install"
alias piui="pip uninstall"
alias piuiy="pip uninstall -y"
alias pil="pip list"
alias pbc="pbcopy"
alias pyv="pyenv version"
alias pyvs="pyenv versions"
alias python="python3"

alias rmrf="rm -rf"

alias s="sudo"
alias sf="source ~/.config/fish/config.fish"
alias ssth="ssh thomas"
alias ssta="ssh tansy"
alias sst4="ssh t4"
alias sk9="sudo kill -9"

alias t="touch"

alias v="vim"
alias vf="vim ~/.config/fish/config.fish"
alias vgi="vim .gitignore"
alias vmg="vim main.go"
alias vm="vim main.py"
alias vp="vim preprocess.py"
alias vr="vim README.md"
alias vt="vim test.py"

alias w="which"

alias 3="python"
alias 3t="python test.py"
alias 3p="python preprocess.py"


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
# eval /Users/shintaroyoshida/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/shintaroyoshida/google-cloud-sdk/path.fish.inc' ]; . '/Users/shintaroyoshida/google-cloud-sdk/path.fish.inc'; end

## Google Cloud SDK 
#bass source '/Users/shintaroyoshida/google-cloud-sdk/path.bash.inc'
#bass source '/Users/shintaroyoshida/google-cloud-sdk/completion.bash.inc'

#set -g fish_user_paths "/usr/local/Homebrew/sbin" $fish_user_paths
#set -g fish_user_paths "/usr/local/Homebrew/opt/mysql@5.7/bin" $fish_user_paths
# set -Ux fish_user_paths ""/usr/local/Homebrew/opt/mysql@5.7/bin $fish_user_paths
# if test -d (brew --prefix)"/share/fish/completions"
#     set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
# end
# 
# if test -d (brew --prefix)"/share/fish/vendor_completions.d"
#     set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
# end
#set -Ux fish_user_paths "/usr/local/Homebrew/opt/mysql@5.7/bin" $fish_user_paths
# set -g fish_user_paths "/usr/local/Homebrew/sbin" $fish_user_paths

set -U GOPATH $HOME/bin/go
# set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
cd ~/Desktop
