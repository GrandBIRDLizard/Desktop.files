"#### GrandBIRDLizard's VIM Config ####

"#### General #### 
syntax on 
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set autoindent 
set smartindent 
set termguicolors  
set number 
nnoremap <Leader>cc :set colorcolumn=80<CR> 
nnoremap <Leader>cc :set colorcolumn=<CR>
set mouse=a
let g:coc_node_path = '/home/jmoney/.nvm/versions/node/v24.11.1/bin/node'  


"#### Zig ####
" don't show parse errors in a separate window
let g:zig_fmt_parse_errors = 0
" disable format-on-save from `ziglang/zig.vim`
let g:zig_fmt_autosave = 0

"####Plugins ####
call plug#begin('~/.vim/plugged')
   Plug 'ziglang/zig.vim'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'shrikecode/kyotonight.vim'
call plug#end()

"#### LSP Behavior ####
" Tab = next completion item if menu is open, otherwise insert a tab
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : "\<TAB>"
" Shift-Tab = previous completion item
inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
" Enter = confirm selection if popup is open, otherwise normal Enter
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>"

"#### Theme ####
let g:kyotonight_bold = 1
let g:kyotonight_underline = 0
let g:kyotonight_italic = 0
let g:kyotonight_italic_comments = 1
let g:kyotonight_uniform_status_lines = 0
let g:kyotonight_cursor_line_number_background = 1
let g:kyotonight_uniform_diff_background = 0
let g:kyotonight_lualine_bold = 0

colorscheme kyotonight
