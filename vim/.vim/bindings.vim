" ----------------------------------------
" Bindings
" ----------------------------------------
" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=","

" Fixes common typos
command! W w
command! Q q
map <F1> <Esc>
imap <F1> <Esc>
" Crazy flying pinky
cnoremap w' w<CR>

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nmap Q @@

" Removes doc lookup binding because it's easy to fat finger and never useful.
nmap K k
vmap K k

" Make line completion easier.
imap <C-l> <C-x><C-l>

" Overrides neocomplcache with regular keyword completion
inoremap <expr><C-k>  "\<C-x><C-n>"

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :
" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Yank entire buffer with gy
nmap gy :%y+<cr>

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Clear search
map <silent><Leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" ---------------
" Leader Commands
" ---------------

" Toggle spelling mode with ,s
nmap <silent> <leader>s :set spell!<CR>
" Edit vimrc with ,v
nmap <silent> <leader>v :e ~/.vim/vimrc<CR>
" Quickly switch to last buffer
nnoremap <leader>, :e#<CR>

" Window Movement
" Here's a visual guide for moving between window splits.
"   4 Window Splits
"   --------
"   g1 | g2
"   ---|----
"   g3 | g4
"   -------
"
"   6 Window Splits
"   -------------
"   g1 | gt | g2
"   ---|----|----
"   g3 | gb | g4
"   -------------
nmap <silent> gh :wincmd h<CR>
nmap <silent> gj :wincmd j<CR>
nmap <silent> gk :wincmd k<CR>
nmap <silent> gl :wincmd l<CR>
" Upper left window
nmap <silent> g1 :wincmd t<CR>
" Upper right window
nmap <silent> g2 :wincmd b<Bar>:wincmd k<CR>
" Lower left window
nmap <silent> g3 :wincmd t<Bar>:wincmd j<CR>
" Lower right window
nmap <silent> g4 :wincmd b<CR>

" Top Middle
nmap <silent> gt g2<Bar>:wincmd h<CR>
" Bottom Middle
nmap <silent> gb g3<Bar>:wincmd l<CR>

" Previous Window
nmap <silent> gp :wincmd p<CR>
" Equal Size Windows
nmap <silent> g= :wincmd =<CR>
" Swap Windows
nmap <silent> gx :wincmd x<CR>

" Split window vertically or horizontally *and* switch to the new split!
nmap <silent> <leader>hs :split<Bar>:wincmd j<CR>
nmap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>

" Close the current window
nmap <silent> <leader>sc :close<CR>

" -----------------------
" Escape / Write Bindings
" -----------------------

" Let's make escape better, together.
inoremap jk <Esc>
inoremap JK <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>

" Wrap the current line
nmap <leader>fl Vgq

" Tab
nmap <silent> gn :tabn<CR>
