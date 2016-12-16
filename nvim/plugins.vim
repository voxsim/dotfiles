call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'joshdick/onedark.vim'                                       " theme
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " fuzzy file finder
Plug 'junegunn/fzf.vim'                                           " fuzzy file finder plugin
Plug 'janko-m/vim-test'                                           " runner for tests
Plug 'bling/vim-airline'                                          " lean & mean status/tabline
Plug 'sheerun/vim-polyglot'                                       " A solid language pack for Vim.
Plug 'neomake/neomake'                                            " syntax checking
Plug 'ervandew/supertab'                                          " Perform all your vim insert mode completions with Tab
Plug 'scrooloose/nerdtree'                                        " A tree explorer for vim
Plug 'tpope/vim-commentary'                                       " comment plugin
Plug 'mhinz/vim-signify'                                          " Show a diff via Vim sign column
Plug 'tpope/vim-surround'                                         " quoting/parenthesizing made simple
Plug 'sotte/presenting.vim', { 'for': 'markdown' }                " A simple tool for presenting slides in vim based on text files.
Plug 'JamshedVesuna/vim-markdown-preview'                         " markdown preview
Plug 'ryanoasis/vim-devicons'                                     " vim dev icons from nerd-fonts
Plug 'MarcWeber/vim-addon-local-vimrc'                            " local vimrc for projects
Plug 'terryma/vim-multiple-cursors'                               " vim multiple cursor like sublime
Plug 'ntpeters/vim-better-whitespace'                             " highlight whitespaces
Plug 'ecomba/vim-ruby-refactoring'                                " refactoring for ruby
Plug 'keith/investigate.vim'                                      " Looking up documentation
" Plug 'LucHermitte/vim-refactor'
" metakirby5/codi.vim


call plug#end()
