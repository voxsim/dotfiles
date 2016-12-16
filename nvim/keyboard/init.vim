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

noremap <leader>p :set paste!<CR> " Paste toggle

noremap <C-l> :nohlsearch<CR> " Clear search highlighting

source ~/.config/nvim/keyboard/fzf.vim
source ~/.config/nvim/keyboard/nerd-tree.vim
source ~/.config/nvim/keyboard/signify.vim
source ~/.config/nvim/keyboard/vim-test.vim
