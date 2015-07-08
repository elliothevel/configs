syntax enable

filetype plugin on
filetype indent on

set mouse=a

set autoindent
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab

set ruler
set tw=79

"Color scheme.
colorscheme wombat256
set background=dark
set t_Co=256
set cursorline

"LaTeX settings.
let g:tex_flavor="latex"
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_GotoError=0
let g:Imap_UsePlaceHolders=0

"Key mappings.
:inoremap jk <Esc>
:nore ; :

inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

"Store swap files in one place.
set dir=~/.vimswap//,/var/tmp//,/tmp,.

"Open file set on last line edited.
if has("autocmd")
    au BufReadPost * if line ("'\"") > 1 && line("'\"") <= line("$") | exe
    "normal! g'\"" | endif 
endif

"gvim settings
:set guioptions-=T

"run python scripts with F9
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
