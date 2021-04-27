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
alias c1="sh create-step1.sh"
alias c2="sh create-step2.sh"
alias c3="sh create-step3.sh"
alias cda="conda activate"
alias cde="conda env"
alias cdel="conda env list"
alias clean_docker="docker system prune --force ;; docker images -aq | xargs docker rmi"
alias cf="cat ~/.config/fish/config.fish"
alias cppwd="pwd | pbcopy"
alias code="code-insiders"
alias codep="code-insiders ."
alias cr="cat README.md"

alias dcleanup=" docker images -aq | xargs docker rmi && docker system prune --yes"
alias db="docker build"
alias dcl="docker container ls"
alias dcla="docker container ls -la"
alias dcp="docker-compose"
alias dcpb="docker-compose build"
alias dcpd="docker-compose down"
alias dcpdud="docker-compose down && docker-compose up -d"
alias dcpud="docker-compose up -d"
alias dcpu="docker-compose up"
alias dcpudb="docker-compose up -d --build"
alias decp="docker ecs compose"
alias deit="docker exec -it"
alias dis="docker images"
alias drmif="docker rmi -f"
alias drmf="docker rm -f"
alias dr="docker run"

alias gbom="go build -o main"
alias gor="go run"
alias gorm="go run main.go"
alias got="go test"
alias g="git"
alias ga="git add"
alias gaa="git add *"
alias gagi="git add .gitignore"
alias gadi="git add .dockerignore"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gchd="git checkout dev"
alias gchm="git checkout main"
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
alias grmo="git remote"
alias grmov="git remote -v" 
alias grmc="git rm --cached"
alias grmcr="git rm --cached -r"
alias grh="git reset --hard"
alias grhh="git reset --hard HEAD"
alias grv="git remote -v"
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

alias n="npm"
alias ni="npm init"
alias nr="npm run"
alias nrs="npm run start"
alias nrb="npm run build"

alias oaa="open -a Atom "
alias oaap="open -a Atom ."
alias oas="open -a Safari "
alias oaf="open -a Finder "
alias oafp="open -a Finder ."
alias pip="pip3"
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
alias ssa="ssh archaic"
alias ssth="ssh thomas"
alias sk9="sudo kill -9"

alias t="touch"

alias v="vim"
alias vf="vim ~/.config/fish/config.fish"
alias vgi="vim .gitignore"
alias vdcp="vim docker-compose.yml"
alias vdgi="vim .dockerignore"
alias vmg="vim main.go"
alias vm="vim main.py"
alias vp="vim preprocess.py"
alias vr="vim README.md"
alias vt="vim test.py"

alias w="which"

alias ydl="youtube-dl"

alias 3="python"
alias 3t="python test.py"
alias 3p="python preprocess.py"


##########################################
# Custom Function 
##########################################
function grmdel
    git rm (git ls-files --deleted)
end

<<<<<<< HEAD
cd ~/Desktop
=======
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
#eval /Users/yoshida/src/miniforge3/bin/conda "shell.fish" "hook" $argv | source
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

set -U GOPATH $HOME/src/go
# set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
#cd ~/Desktop
# set -U fish_user_paths /Users/yoshida/Library/Python/3.9/bin $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/icu4c/bin" $fish_user_paths
>>>>>>> c292c882326c8695039fe1d3b370f6e21001d08e
