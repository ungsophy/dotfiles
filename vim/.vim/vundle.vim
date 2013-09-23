" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" This fork is required due to remapping ; to :
Bundle 'kien/ctrlp.vim'
" UI Additions
Bundle 'scrooloose/nerdtree'
" Commands
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'rking/ag.vim'
Bundle 'nelstrom/vim-visual-star-search'
" Automatic Helpers
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'Valloric/MatchTagAlways'
" Language Additions
"   Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
"   JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
"   HTML
Bundle 'nono/vim-handlebars'
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'
"   TomDoc
Bundle 'mutewinter/tomdoc.vim'
Bundle 'jc00ke/vim-tomdoc'
"   Other Languages
Bundle 'mutewinter/vim-css3-syntax'
" MatchIt
Bundle 'matchit.zip'
" Libraries
Bundle 'L9'
