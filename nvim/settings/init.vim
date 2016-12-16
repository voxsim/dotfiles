
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

source ~/.config/nvim/settings/fzf.vim
source ~/.config/nvim/settings/nerd-tree.vim
source ~/.config/nvim/settings/signify.vim
source ~/.config/nvim/settings/vim-test.vim
