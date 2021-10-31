set t_Co=256
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set title
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin indent on
set ttyfast                 " Speed up scrolling in Vim
set noswapfile              " disable creating swap file
set backupdir=~/.cache/vim  " Directory to store backup files.
" Limit popup menu height
set pumheight=15
set background=dark
set termguicolors

set rtp+=~/.local/share/nvim/site/autoload/plug.vim
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
  Plug 'honza/vim-snippets'
  Plug 'scrooloose/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'jacoborus/tender'
  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'jremmen/vim-ripgrep'
  Plug 'terryma/vim-smooth-scroll'
  Plug 'vim-scripts/TagHighlight'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'dunstontc/vim-vscode-theme'
  Plug 'tomasiser/vim-code-dark'
  Plug 'jdsimcoe/abstract.vim'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-vinegar'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-speeddating'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-dispatch'
call plug#end()

syntax on
syntax enable

let g:airline_theme = 'jet'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

colorscheme tender
highlight Normal guibg=none
highlight NonText guibg=none

"Leader
let mapleader=";"

nnoremap Q <nop>

"Ctrl-S
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>
inoremap :w <esc>:w<cr>
vnoremap <c-s> <esc>:w<cr>

"Ctrl-Q
nnoremap <c-q> :q<cr>

"Ctrl-X
nnoremap <c-x> :x<cr>

"Leader w
nnoremap <leader>w <c-w>

"Command Typos
cabbrev W  w
cabbrev Wq wq
cabbrev W! w!
cabbrev Q  q
cabbrev Q! cq
cabbrev Ta ta
cabbrev TA ta

" Visual shifting (does not exit Visual mode)
vmap < <gv
vmap > >gv
vmap <Space> I<Space><Esc>gv
vmap . :normal .<cr>

" copy and paste to system clipboard with <leader>
vmap <leader>y "+y
vmap <leader>d "+d
vmap <leader>p "+p
vmap <leader>P "+P
nmap <leader>y "+y
nmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P

"Buffer navigation
nnoremap <tab> :bn<cr>
nnoremap <s-tab> :bp<cr>

"Undo
nnoremap U :redo<cr>
nnoremap <silent> <F6> :UndotreeToggle<cr>
nmap <leader>u :UndotreeToggle<cr>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" move vertically by visual line
nnoremap j gj
nnoremap k gk

"Batch move
nmap <leader>aj        mz:m+<cr>`z==
nmap <leader>ak        mz:m-2<cr>`z==
vmap <leader>aj        :m'>+<cr>`<my`>mzgv`yo`z
vmap <leader>ak        :m'<-2<cr>`>my`<mzgv`yo`z

"Select all
nnoremap <leader>aa        :keepjumps normal ggVG<cr>
nnoremap <leader>ai        mzgg=G :%s/^\s\s\*\//\*\//g<cr>`z

"Whitespace
highlight ExtraWhitespace ctermbg=132

match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

function! TrimWhiteSpaceInVisual()
 '<,'>s/\s\+$//e
endfunction

nmap <F10> :call TrimWhiteSpace()<cr>
vmap <F10> :call TrimWhiteSpaceInVisual()<cr>

"BufOnly
map <leader>bo :BufOnly<cr>
map <leader>be :BufOnly<cr>:Bclose<cr>

" Clear search pattern (\c lean)
map <silent> <leader>c :let @/ = ""<cr>

"Select all
nnoremap <leader>aa        :keepjumps normal ggVG<cr>
nnoremap <leader>ai        mzgg=G :%s/^\s\s\*\//\*\//g<cr>`z

"Add semicolen at the end of the line
nmap <leader>ee  mzEa;<esc>`z:w<cr>

"BufOnly
map <leader>bo :BufOnly<cr>
map <leader>be :BufOnly<cr>:Bclose<cr>

"Close the current buffer
map <leader>bd :Bclose<cr>
let bclose_multiple = 0
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if bufnr("%") == l:currentBufNum
    new
  endif

  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction

