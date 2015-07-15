" Begin /etc/vimrc
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
  Plugin 'gmarik/Vundle.vim'
  Plugin 'kien/ctrlp.vim'

  Plugin 'derekwyatt/vim-scala'
  Plugin 'mileszs/ack.vim'
  Plugin 'scrooloose/syntastic'

" End vundle
call vundle#end()            " required
filetype plugin indent on    " required


" Ctrl-P Customization
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
set nocompatible " Use vim defaults instead of vi defaults (much better!)


set hlsearch      " Search: Highlight matches
set incsearch     " Search: Match as you type

nnoremap <silent> <C-l> :nohl<CR><C-l> " <Ctrl-l> redraws the screen and removes any search highlighting.
set ruler
set et
set sw=2
" Set tab =4 for python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
set smarttab
set expandtab
set showmatch " when hovering over a (){}[], highlights matching bracket
set number
set pastetoggle=<F2> " toggles paste mode (lets you paste without messing up indentation
set backspace=indent,eol,start
syntax on
set t_Co=256
filetype on
filetype indent on
filetype plugin on
set title
runtime macros/matchit.vim
set wildmenu
set wildmode=list:longest
set encoding=utf-8
if (&term == "iterm" ) || (&term == "putty" )
  set background=light
endif

set background=dark


" no swap files
set nobackup
set nowb
set noswapfile


" TUrn off f1 = Help
:nmap <F1> :echo<CR>
:imap <F1> <C-o>:echo<CR>

" Autosave
:au FocusLost * :wa

" enable mouse support in console
set mouse=a

"  Syntax for different file types
augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
  au BufNewFile,BufRead *.ftl set filetype=ftl syntax=ftl 
  au BufNewFile,BufRead *.r set filetype=r syntax=r
  au BufNewFile,BufRead *.less set filetype=less
  au BufNewFile,BufRead *.scala set filetype=scala syntax=scala
  au BufNewFile,BufRead *.md set filetype=markdown syntax=markdown
augroup END 




" Remap VIM 0 to first non-blank character
map 0 ^

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" 4nd /etc/vimrc
"
"


" ctrlp
set wildignore+=*.o,*.pyc,*.pyo,*.hi,*.hi-boot,*.class,*.jar
set wildignore+=*.png,*.gif,*.jpg,*.pdf,*.ps
set wildignore+=_darcs/**
set wildignore+=**/target/*       " mvn/sbt
set wildignore+=**/build/*
