""" Vim-Plug
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
  " Declare the list of plugins.
  Plug 'junegunn/vim-easy-align'
  Plug 'mattn/emmet-vim'
  Plug 'fatih/vim-go'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

""" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

""" mattn/emmet-vim Environment
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

""" Color Scheme 
syntax on 
colorscheme iceberg

""" Column Number 
set number
set cursorline

""" Tab Width 
set tabstop=2
set shiftwidth=2
