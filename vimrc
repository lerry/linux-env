colorscheme evening
set foldlevel=9999
set nonumber
set backspace=indent,eol,start
set nocp
set encoding=utf-8
set hlsearch 
set tabstop=4
set expandtab
set fileformat=unix
set nobomb
set ff=unix
set ambiwidth=double
set shiftwidth=4
set fileencodings=utf-8,ucs-bom,cp936
runtime! debian.vim
syntax on
filetype plugin on
set  completeopt=preview 
set mouse=i

map <F12> :call FormartSrc()<CR>

"定义FormartSrc()
func FormartSrc()
exec "w"
if &filetype == 'c'
exec "!astyle --style=ansi --one-line=keep-statements -a --suffix=none %"
elseif &filetype == 'cpp' || &filetype == 'hpp'
exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %>
/dev/null 2>&1"
elseif &filetype == 'perl'
exec "!astyle --style=gnu --suffix=none %"
elseif &filetype == 'py'||&filetype == 'python'
exec "r !pydent % > /dev/null 2>&1"
elseif &filetype == 'java'
exec "!astyle --style=java --suffix=none %"
elseif &filetype == 'jsp'
exec "!astyle --style=gnu --suffix=none %"
elseif &filetype == 'xml'
exec "!astyle --style=gnu --suffix=none %"
endif
exec "e! %"
endfunc
""结束定义FormartSrc

map <F11> :call RunSrc()<CR>

"定义FormartSrc()
func RunSrc()
exec "w"
if &filetype == 'c'
exec "!astyle --style=ansi --one-line=keep-statements -a --suffix=none %"
elseif &filetype == 'cpp' || &filetype == 'hpp'
exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %>
/dev/null 2>&1"
elseif &filetype == 'perl'
exec "!astyle --style=gnu --suffix=none %"
elseif &filetype == 'py'||&filetype == 'python'
exec "!python %"
elseif &filetype == 'java'
exec "!astyle --style=java --suffix=none %"
endif
exec "e! %"
endfunc
""结束定义FormartSrc  

" 激活ncc
" "let g:neocomplcache_enable_at_startup = 1
" ""let g:NeoComplCache_DisableAutoComplete = 1
" "let g:SuperTabDefaultCompletionType="context"
" "
" "
" "" Enable omni completion.
" "autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" "autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" "autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 
"
" set smarttab
"
" filetype indent off
" let MRU_Max_Entries = 42
"
