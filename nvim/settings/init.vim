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

autocmd BufNewFile,BufRead * :Limelight

" vim-markdown-preview

let vim_markdown_preview_hotkey='<C-r>'

let vim_markdown_preview_github=1

source ~/.config/nvim/settings/fzf.vim
source ~/.config/nvim/settings/vim-test.vim
