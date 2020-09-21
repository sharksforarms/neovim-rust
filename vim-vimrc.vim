" Prerequisites:
" - vim-plug: https://github.com/junegunn/vim-plug
" - For tagbar: a tag generator (i.e. apt-get install exuberant-ctags)

" Steps:
" - :PlugInstall
" - Restart

call plug#begin('~/.vim/plugged')

" Syntastic is a syntax checking plugin
" It runs files through external syntax checkers and displays any
" resulting errors to the user
Plug 'scrooloose/syntastic'

" Tagbar will generate tags in memory, allowing you to navitage to
" structs, functions, etc. In the current file
Plug 'preservim/tagbar'

" Rust file detection, syntax highlighting, formatting,
" Syntastic integration, and more
Plug 'rust-lang/rust.vim'

call plug#end()

syntax enable
filetype plugin indent on

" Toggle tagbar
nmap <F8> :TagbarToggle<CR>
