"set paste
"let g:rubycomplete_rails = 1
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python compiler pylint
set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set laststatus=2 
"set mouse=a

set runtimepath+=~/.vim/UltiSnips
"
"autocmd BufWritePost *.py make 
"let g:pylint_show_rate = 1
"let g:pylint_cwindow = 1
"set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
"set errorformat=%f:%l:\ %m
set nobackup
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set completeopt=preview,menuone
set showmatch
"let g:RCT_toggle_binding="<C-X><C-t>"
set nocompatible
syn on
"let g:rct_completion_use_fri = 1
"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global = 1
set incsearch
filetype off
"call pathogen#helptags()
"#call pathogen#runtime_append_all_bundles()
filetype plugin on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0

" minibufexpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

"ropevim
"let ropevim_vim_completion=1
"let ropevim_extended_complete=1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set foldlevel=2

set wildmenu
set wildmode=longest:full
set wildignore=*.pyc
