set nocompatible

" Plugins ====================================================================

call plug#begin('~/.config/nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'bling/vim-airline' " many integration to look for
Plug 'christoomey/vim-run-interactive'
Plug 'craigemery/vim-autotag'
Plug 'ctrlpvim/ctrlp.vim' " commands to list
Plug 'ervandew/supertab'
Plug 'janko-m/vim-test'
Plug 'mileszs/ack.vim' " -- until here
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'

call plug#end()

" General Config =============================================================

set autoread
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set hidden
set history=1000
set laststatus=2
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
set ttyfast
set visualbell
set clipboard=unnamed
set colorcolumn=80
set ffs=unix,dos
set ff=unix

syntax on
colorscheme onedark

" Leader
let mapleader = ","
let maplocalleader = "\\"

" Search Settings ============================================================

set incsearch
set hlsearch
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

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set shiftround

filetype plugin on
filetype indent on

set list listchars=tab:»·,trail:·
set showbreak=↪

" Completion =================================================================

set wildmode=list:longest,full

" Scrolling ==================================================================

set scrolloff=3
set sidescrolloff=15
set sidescroll=1

" Convenience mappings =======================================================

" Disable arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disable arrow keys in insert mode
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Formatting
noremap F gg=G

" Easy tab navigation
noremap <F1> gT
noremap <F2> gt

noremap <leader>a :Ack!<Space>
noremap <leader>f :TestFile<CR>
noremap <leader>g :TestVisit<CR>
noremap <leader>l :TestLast<CR>
noremap <leader>p :set paste!<CR> " Paste toggle
noremap <leader>r :RunInInteractiveShell<space> " vim-run-interactive
noremap <leader>s :%s//<left> " Substitute
noremap <leader>t :TestNearest<CR>
noremap <leader>T :TestSuite<CR>

noremap <C-e> :NERDTreeToggle<CR>
noremap <C-l> :nohlsearch<CR> " Clear search highlighting

" Autocommands ===============================================================

if has('autocmd')

  set omnifunc=syntaxcomplete#Complete

  augroup vimrcEx
    au!

    " Remove any trailing whitespace that is in the file
    autocmd BufWrite * if ! &bin | :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")')) | endif

    " Filetype-specific settings
    autocmd Filetype ruby set tabstop=2 shiftwidth=2 softtabstop=2
    autocmd BufRead *.html,*.htm set tabstop=2 shiftwidth=2 softtabstop=2 nowrap
    autocmd BufRead *.txt set tabstop=2 shiftwidth=2 softtabstop=2

  augroup END

endif " has('autocmd')

" Plugin settings ============================================================

" NERD Tree
let NERDTreeHighlightCursorline=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 40

" Supertab

let g:SuperTabLongestHighlight = 1

" Ack

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" CtrlP

let g:ctrlp_working_path_mode = 0
let g:ctrlp_extensions = ['tag']

" Excluding version control directories
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*        " Linux/MacOSX
set wildignore+=*\\.git\\*,*\\.hg\\*,*\\.svn\\*,*\\node_modules\\*  " Windows ('noshellslash')

let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }

" Signify

let g:signify_vcs_list = ['git']

" Airline

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_left_alt_sep='❯'
let g:airline_right_alt_sep='❮'
let g:airline_symbols.branch = '⚡'

" Local vimrc ================================================================

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

" Project specific vim =======================================================
set exrc
set secure

" Syntastic  =================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Easytags  =================================================================
let g:easytags_cmd = '/usr/local/bin/ctags'

let g:autotagTagsFile=".tags"
