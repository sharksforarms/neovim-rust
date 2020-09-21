" Prerequisites:
" - coc needs vim >= 8.1.1719 to support features like popup and text property
" - nodejs: curl -sL install-node.now.sh/lts | bash

" Steps:
" - :PlugInstall
" - :CocInstall coc-rust-analyzer
" - Restart

call plug#begin('~/.vim/plugged')

" coc: Conquer of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

syntax enable
filetype plugin indent on

" This is a highly configurable plugin.
"
" For features such as goto definition, tab completion, documentation preview
" and more, see the sample configuration:
" https://github.com/neoclide/coc.nvim#example-vim-configuration

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

" Code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Trigger completion with <tab>
" found in :help completion
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ completion#trigger_completion()


" Goto previous/next diagnostic warning/error
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction
