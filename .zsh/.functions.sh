#mkdir and cd
function mc(){
    mkdir $1
    cd $1
}

function path_append(){
  path_remove $1; export PATH="$PATH:$1"; 
}

function path_prepend(){ 
  path_remove $1; export PATH="$1:$PATH"; 
}

function path_remove(){
  export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`; 
}

function grmdel(){
    git rm $(git ls-files --deleted)
}

function grmgi(){
  git rm --cached `git ls-files --full-name -i --exclude-from=.gitignore`
}

function toggl(){
  source activate toggl
  python3 ~/Documents/toggl_api/toggl_to_Gcalendar.py
  source deactivate 
}
