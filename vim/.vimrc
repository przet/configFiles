let loaded_matchparen=1
inoremap jk <ESC>
set tabstop=4
set softtabstop=4
"set expandtab
set showcmd
set wildmenu
set noshowmatch
set hlsearch
syntax on
colorscheme desert
set number
"Some addition based on the vim help example vimrc file
if has("vms")
    set nobackup
else
    set backup
endif

"This tells Vim to keep a backup copy of a file when overwriting it (but not
"on the VMS system...I need to find out what this is!

set history=50
set autoindent

"close the quickfix window
ccl
"ClangComplete
filetype plugin on
filetype plugin indent on
let g:clang_exec='/usr/bin/clang++-5.0'
let g:clang_library_path='/usr/lib/llvm-5.0/'
let g:clang_complete_auto = 1
let g:clang_user_options='|| exit 0'
"let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++17'
let g:clang_hl_errors = 0
let g:clang_complete_copen = 0
set pumheight=15
set completeopt =menu,menuone,longest


"Omnicpp
"set nocp
"filetype plugin on
"set tags+=~/.vim/tags/cpp


"Vim Latex Additions NOTE I accidently removed a ftplugin folder which I
"_think_ was the latex additions one. So I will need to reinsatll this...

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
"filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
"set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
"filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
