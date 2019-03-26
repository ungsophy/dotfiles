" A minimal vimrc for new vim users to start with.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Set the title of the window in the terminal to the file
set title

" Always show the statusline
set laststatus=2   

" Ruler on
set ruler

" Display line numbers
set number

" Yank to clipboard
set clipboard=unnamed

" Switch syntax highlighting on
syntax on

set hlsearch

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Color theme
set t_Co=256
colorscheme grb256

"---------------------------
" Core bindings begin
"---------------------------

" Set leader to ,
" Note: This line must come before any <leader> mappings
let mapleader=","

" Window movement
nmap <silent> gh :wincmd h<CR>
nmap <silent> gj :wincmd j<CR>
nmap <silent> gk :wincmd k<CR>
nmap <silent> gl :wincmd l<CR>

" Swap Windows
nmap <silent> gx :wincmd x<CR>

" Move to the next tab
nmap <silent> gn :tabn<CR>

" Create a new tap
nmap <silent> tn :tabnew<CR>

" Reload ~/.vimrc
nnoremap <leader>r :so ~/.vimrc<CR>

" Exit terminal mode
tnoremap <C-]> <C-\><C-n>

"---------------------------
" Core binding end
"---------------------------


"---------------------------
" Plugins begin
"---------------------------

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" ack.vim
Plug 'https://github.com/mileszs/ack.vim.git'
nnoremap <leader>g :Ack 
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Intellisense
Plug 'https://github.com/Valloric/YouCompleteMe.git'
" Assume that YouCompleteMe is at '/Users/ungsophy/.vim/plugged/YouCompleteMe'
"
" cd /Users/ungsophy/.vim/plugged/YouCompleteMe
" ./install.py --all

" Programming languages
Plug 'https://github.com/fatih/vim-go.git'

" Files explorer
Plug 'https://github.com/scrooloose/nerdtree.git'

" Fuzzy files finder
Plug 'https://github.com/junegunn/fzf.git', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'https://github.com/junegunn/fzf.vim.git'
nnoremap <leader>f :FZF<CR>

" Comments
Plug 'https://github.com/scrooloose/nerdcommenter.git'
nnoremap <leader>nt :NERDTreeToggle<CR>
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Surround
Plug 'tpope/vim-surround'

" Maximizer
Plug 'szw/vim-maximizer'
let g:maximizer_set_default_mapping = 1
nnoremap <leader>tt :MaximizerToggle<CR>

" Initialize plugin system
call plug#end()

"---------------------------
" Plugins end
"---------------------------


"---------------------------
" Functions begin
"---------------------------

if !exists("*UseTab")
  function UseTab()
    set noexpandtab
    set copyindent
    set preserveindent
    set softtabstop=0
    set shiftwidth=4
    set tabstop=4
    set backspace=2  " Delete everything with backspace
  endfunction
endif

if !exists("*UseSpace")
  function UseSpace()
    set tabstop=2
    set backspace=2  " Delete everything with backspace
    set shiftwidth=2 " Tabs under smart indent

    set cindent
    set autoindent
    set smarttab
    set expandtab
  endfunction
endif

if !exists("*FormatJSON")
  function FormatJSON()
    :%!python -m json.tool
  endfunction
endif

"---------------------------
" Functions end
"---------------------------
