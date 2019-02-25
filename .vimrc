set autoindent
set backspace=indent,eol,start
set printoptions=duplex:long
set tabstop=4
set autowrite
set shiftwidth=4
set foldmethod=indent
set expandtab
set smarttab
set number
"set noruler
set wrap
set list
set list listchars=nbsp:_,tab:>-,trail:.,extends:>,eol:$
set linebreak
"set nolist  " list disables linebreak
set background=dark
"set relativenumber
filetype plugin indent on

autocmd FileType mail :set spell spelllang=en_us
autocmd FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR>
autocmd FileType mail :set textwidth=78

autocmd BufRead *.py set makeprg=python\ %

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
syntax on
