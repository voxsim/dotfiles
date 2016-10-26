source ~/.config/nvim/plugins.vim

syntax on
colorscheme seoul256

" General Config =============================================================

set cursorline
set hidden
set lazyredraw
set modelines=0
set number
set numberwidth=5
set showcmd
set showmatch
set showmode
set splitbelow
set splitright
set title
set visualbell
set clipboard=unnamed
set colorcolumn=80
set ffs=unix,dos
set ff=unix

" Leader
let mapleader = ","
let maplocalleader = "\\"

" Search Settings ============================================================

set ignorecase
set smartcase

" Persistent undo and backups ================================================

" if has('persistent_undo')
"  set undodir=~/.vim/tmp/undo
"  set undoreload=10000
"  set undofile
"endif

"set backupdir=~/.vim/tmp/backup
"set directory=~/.vim/tmp/swap
"set backup

" Indentation ================================================================

set smartindent
set softtabstop=2
set tabstop=2
set expandtab
set shiftround
set shiftwidth=2

" Scrolling ==================================================================

set scrolloff=3
set sidescrolloff=15
set sidescroll=1

" Keyboard mappings

source ~/.config/nvim/keyboard/init.vim

" Plugin settings

source ~/.config/nvim/settings/init.vim
