"set paste
"let g:rubycomplete_rails = 1
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python compiler pylint
set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set laststatus=2 
"set mouse=a

set nobackup
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set completeopt=preview,menuone
set showmatch
set nocompatible
syn on
set incsearch
filetype off
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

set foldlevel=2

set wildmenu
set wildmode=longest:full
set wildignore=*.pyc


:noremap <C-left> :bprev<CR>
:noremap <C-right> :bnext<CR>
