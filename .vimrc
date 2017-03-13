set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256
syntax on
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" set bg=dark
set bg=light

set title
autocmd BufEnter * let &titlestring = "VIM: %F%r%m"
autocmd BufEnter * let titlelen=70

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

let MRU_Max_Entries = 50
map  :MRU<CR>

set autowrite



