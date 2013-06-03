
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

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch on search pattern highlighting.
  set hlsearch

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif

endif

set guifont=Courier_New:h11:cANSI
colorscheme zenburn

"Show line numbers
set number

let mapleader=","
  
map <leader>nt :NERDTreeToggle<CR>
