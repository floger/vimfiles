" Essentials
filetype off
filetype plugin indent on

set nocompatible

set modelines=0

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Fancy things in 7.3

set title
set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
" set relativenumber
" set undofile  Enable 7.3 undo in saved files

set statusline=%F%m%r%h%w[%L]%y[%p%%][%04v][%{fugitive#statusline()}]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the rbuffer
"} 

" <leader> key
let mapleader = ","

" Searching / moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
" nnoremap <tab> %
" vnoremap <tab> %

:nmap <Space> /

" Handle long lines correctly
set wrap
" set textwidth=79
" set formatoptions=n
" set colorcolumn=80

" Show invisible characters
" set list
" set listchars=tab:▸\ ,eol:¬

" Move around lines
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" inoremap <Esc> <nop>

nnoremap j gj
nnoremap k gk

" Map ESC
imap jj <ESC>
nnoremap ; :

" ACK
" Use Ack instead of grep
set grepprg=ack

" ,a to Ack
nnoremap <leader>a :Ack 

" Rotating among results in an ack search
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" TComment
map <Leader>co :TComment<CR>

" Reselect text that was just pasted to perform further commands on it
" nnoremap <leader>v V`]

" Splits  ,v to open a new vertical split and switch to it
nnoremap <leader>v <C-w>v<C-w>l
" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>

" Saving and buffer stuff
" :wqa! Quit saving
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>
nmap <leader><Esc> :q!<CR>


" Set the tag file search order
set tags=./tags;
let Tlist_WinWidth = 60
" Use only current file to autocomplete from tags
set complete=.,t
  
" Use _ as a word-separator
set iskeyword-=_

" EXTERNAL COPY / PASTE "
set pastetoggle=<F2>
map <C-v> "+gP<CR>
vmap <C-c> "+y

" PLUGINS "

" Load all bundles in .vim/bundles
call pathogen#runtime_append_all_bundles() 

" NERDTree
let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
let NERDTreeHijackNetrw = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 50 
map <leader>p :NERDTreeToggle<cr>

" PeepOpen
map <leader>o <Plug>PeepOpen

" TagList
map <leader>l :TlistToggle <cr>
let Tlist_Use_Right_Window = 1

" Buffer window
nmap <silent> <leader>b :FufBuffer<CR>

" AutoClose
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'} 
let g:AutoCloseProtectedRegions = ["Character"] 

" Execute current buffer as ruby
map <S-r> :w !ruby<CR>

let my_home = expand("$HOME/")

if filereadable(my_home . '.vim/bundle/vim-autocorrect/autocorrect.vim')
  source ~/.vim/bundle/vim-autocorrect/autocorrect.vim
endif

" colorscheme af
" colorscheme oceanblack
" colorscheme skittles_dark
" colorscheme twilight
" colorscheme mustang
" colorscheme clouds_midnight
colorscheme molokai

" GUI "
if has("gui_running")
  set guioptions-=T " no toolbar set guioptions-=m " no menus
  set guioptions-=r " no scrollbar on the right
  set guioptions-=R " no scrollbar on the right
  set guioptions-=l " no scrollbar on the left
  set guioptions-=b " no scrollbar on the bottom
  set guioptions=aiA 
  set mouse=v
  set guifont=DejaVu\ Sans\ Mono\ 12 "<- Maybe a good idea when using mac
endif
set guifont=DejaVu\ Sans\ Mono\ 12

" Finally, load custom configs
if filereadable(my_home . '.vimrc.local')
  source ~/.vimrc.local
endif

" NOW SERIOUSLY
set nobackup
set nowritebackup
set noswapfile
syntax on

" BLAAAME
vmap <Leader>gb :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p<CR>

" Tabularize
if exists(":Tab")
  nmap <leader>a\| :Tab /\|<CR>
  vmap <leader>a\| :Tab /\|<CR>
  nmap <leader>a= :Tab /=<CR>
  vmap <leader>a= :Tab /=<CR>
  nmap <leader>a: :Tab /:\zs<CR>
  vmap <leader>a: :Tab /:\zs<CR>
endif

let g:cssColorVimDoNotMessMyUpdatetime = 1

" Press F5 to toggle GUndo tree
nnoremap <F5> :GundoToggle<CR>
