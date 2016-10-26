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

noremap <leader>f :TestFile<CR>
noremap <leader>g :TestVisit<CR>
noremap <leader>l :TestLast<CR>
noremap <leader>t :TestNearest<CR>
noremap <leader>T :TestSuite<CR>

noremap <leader>p :set paste!<CR> " Paste toggle
noremap <leader>s :%s//<left> " Substitute

noremap <C-e> :NERDTreeToggle<CR>
noremap <C-l> :nohlsearch<CR> " Clear search highlighting

source ~/.config/nvim/keyboard/fzf.vim
