if has("autocmd")
    filetype plugin indent on
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nocompatible
set foldopen=all
set sm
set background=dark
set et
set softtabstop=4
set tabstop=4
set smarttab
set shiftwidth=4
set nobk
set wrap
set nu
set backspace=indent,eol,start
set history=50
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif
autocmd FileType text setlocal textwidth=120
set autoindent
au BufNewFile,BufRead *.twig set filetype=jinja
au BufRead,BufNewFile *.js set syntax=jquery
au BufRead,BufNewFile *.tpl set syntax=php
au BufRead,BufNewFile *.pp set filetype=puppet
set statusline+=%F

"CtrlP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/cache/*,*/build/*
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

map <f2> :w<CR>:!php -f %<CR>
map <f3> :w<CR>:!ruby %<CR>
map <f7> <Esc>:echo expand('%:p')<Return>

" for tmux -> auto set columns
let &columns=system('tput cols')
