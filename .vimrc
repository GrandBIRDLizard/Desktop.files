syntax on 
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set autoindent 
set smartindent 
set termguicolors  
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
   Plug 'shrikecode/kyotonight.vim'
call plug#end()

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

let g:kyotonight_bold = 1
let g:kyotonight_underline = 1
let g:kyotonight_italic = 0
let g:kyotonight_italic_comments = 0
let g:kyotonight_uniform_status_lines = 0
let g:kyotonight_cursor_line_number_background = 0
let g:kyotonight_uniform_diff_background = 0
let g:kyotonight_lualine_bold = 1

colorscheme kyotonight
