"set paste
"let g:rubycomplete_rails = 1
"autocmd FileType python set omnifunc=pythoncomplete#Complete
set background=dark
autocmd FileType python compiler pylint
autocmd FileType python setlocal omnifunc=pysmell#Complete
autocmd BufWritePre *py :%s/\s\+$//e
"set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
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
filetype on
filetype plugin on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0

"ropevim
"let ropevim_vim_completion=1
"let ropevim_extended_complete=1

set wildmenu
set wildmode=longest:full
set wildignore=*.pyc

" Specific ignore for DVCS/VCS
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Tagbar settings
let g:tagbar_left = 1

" displays tabs
set lcs=tab:▒░

set t_Co=256

colorscheme candy
