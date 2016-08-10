source ~/.config/nvim/plugins.vim

syntax on
colorscheme onedark

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

nnoremap <leader>git :Grepper -tool git -noswitch<cr>
nnoremap <leader>ag  :Grepper -tool ag  -grepprg ag --vimgrep <cr>
nnoremap <leader>*   :Grepper -tool ack -cword -noprompt<cr>

noremap <leader>f :TestFile<CR>
noremap <leader>g :TestVisit<CR>
noremap <leader>l :TestLast<CR>
noremap <leader>t :TestNearest<CR>
noremap <leader>T :TestSuite<CR>

noremap <leader>p :set paste!<CR> " Paste toggle
noremap <leader>s :%s//<left> " Substitute

noremap <C-e> :NERDTreeToggle<CR>
noremap <C-l> :nohlsearch<CR> " Clear search highlighting

noremap <C-p> :GFiles<CR>
noremap <C-f> :Files<CR>

" Plugin settings ============================================================

" Vim Test
let test#strategy = "neovim"

" NERD Tree
let NERDTreeHighlightCursorline=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeChDirMode = 2
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 40

" Airline

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_left_alt_sep='❯'
let g:airline_right_alt_sep='❮'
let g:airline_symbols.branch = '⚡'

" Supertab

let g:SuperTabLongestHighlight = 1

" Signify

let g:signify_vcs_list = ['git']
