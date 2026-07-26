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

"Dynamic vim-plug instalation

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins

call plug#begin('~/.vim/plugged')

" LSP + completion

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Linting/fixing

Plug 'dense-analysis/ale'

" C

Plug 'bfrg/vim-cpp-modern'

" Zig

Plug 'ziglang/zig.vim'

" Python

Plug 'vim-python/python-syntax'
Plug 'psf/black'
Plug 'Vimjas/vim-python-pep8-indent'

" General QOL

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'itchyny/lightline.vim'

call plug#end()
