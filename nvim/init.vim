set number relativenumber
set noswapfile
set nocompatible              " required
filetype off                  " required
set showtabline=0
set hidden
set autoindent
set syntax
set scrollback=7
set expandtab
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'yuttie/comfortable-motion.vim'      " Smooth scrolling
Plug 'metakirby5/codi.vim'
Plug 'thaerkh/vim-indentguides'           " Visual representation of indents
Plug 'jmcantrell/vim-virtualenv'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
call plug#end()
set mouse=a
au BufReadPost,BufNewFile *.js,*.ts, Codi 
colorscheme nord 
set cursorline
:nmap <space>e :CocCommand explorer<CR>
map <S-y> :tabnew<CR>
map <S-n> :tabn<CR>

let g:startify_custom_header= '' 





set encoding=utf-8
scriptencoding utf-8

let g:lightline = {
   \ 'colorscheme': 'nord',
   \ 'active': {
   \   'left': [ [ 'mode', 'paste' ],
   \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
   \ },
   \ 'component_function': {
   \   'cocstatus': 'coc#status',
   \   'currentfunction': 'CocCurrentFunction'
   \ },
   \ }

