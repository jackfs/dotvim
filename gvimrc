
" The commands in this are executed when the GUI is started.

"Pathogen
filetype off
call pathogen#incubate()
call pathogen#helptags()
filetype plugin indent on

set nocompatible               " be iMproved

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Switch on syntax highlighting if it wasn't on yet.
if !exists("syntax_on")
  syntax on
endif

set guifont=Courier_New:h11:cANSI
colorscheme zenburn

"Show line numbers
set number

"Use Delphi indentation by default.
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab        "insert spaces rather than tab characters

"Have a newly created line use the indentation of the previous line.
set autoindent

set backup

set incsearch

"Switch on search pattern highlighting.
set hlsearch

let mapleader=","
  
map <leader>nt :NERDTreeToggle<CR>


" For Win32 version, have "K" lookup the keyword in a help file
"if has("win32") "  let winhelpfile='windows.hlp'
"  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
 "endif