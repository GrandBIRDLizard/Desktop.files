syntax on 
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set autoindent 
set smartindent 
set termguicolors 
colorscheme zaibatsu 
set number 
nnoremap <Leader>cc :set colorcolumn=80<cr> 
nnoremap <Leader>cc :set colorcolumn -=80<cr>
set mouse=a

let g:coc_node_path = '/home/jmoney/.nvm/versions/node/v22.17.0/bin/node'

" don't show parse errors in a separate window
let g:zig_fmt_parse_errors = 0
" disable format-on-save from `ziglang/zig.vim`
let g:zig_fmt_autosave = 0

call plug#begin('~/.vim/plugged')
   Plug 'prabirshrestha/vim-lsp'
   Plug 'ziglang/zig.vim'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
