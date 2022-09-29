set nocompatible              " be iMproved, required
filetype plugin indent on
syntax on

set laststatus=2
set noshowmode
set noruler
set background=dark
set expandtab
set softtabstop=2
set shiftwidth=2
set backspace=indent,eol,start
"matching end with dos, just hit %
runtime macros/matchit.vim
highlight link xmlEndTag xmlTag

let g:lightline = { 
 \ 'colorscheme': 'jellybeans',
 \  'active': {
 \     'left': [
 \       ['mode','paste'],
 \       ['gitbranch','readonly','filename','modified'],
 \   ]
 \   },
 \  'component_function': {
 \     'gitbranch':'fugitive#head',
 \  }
\}
" Set 'TODO' & 'FIXME' strings to standout
let g:jellybeans_overrides = { 'Todo': { 'guifg': 'ff4500', 'guibg': 'eeee00', 'ctermfg': '196', 'ctermbg': '226', 'attr': 'standout' }, }
"set t_Co=256

" Change directory to the current buffer when opening files.
set autochdir

"########################################################
"         Useful code from More Instantly Better Vim
"

"========[ Make the 81st column stand out ]==============

    highlight ColorColumn ctermbg=magenta

"========[ Make the whole column stand out ]============

    "set colorcolumn=81

"========[ Make just the character on the 81st column stand out ]=========

    call matchadd('ColorColumn','\%81v', 100)

"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======

    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list


"====[ Swap : and ; to make colon commands easier to type ]======

    nnoremap  ;  :
    nnoremap  :  ;

"=====[ Highlight matches when jumping to next ]=============

    " This rewires n and N to do the highlighing...
    nnoremap <silent> n   n:call HLNext(0.4)<cr>
    nnoremap <silent> N   N:call HLNext(0.4)<cr>


    " Blink the line containing the match...
    function! HLNext (blinktime)
        set invcursorline
        redraw
        exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
        set invcursorline
        redraw
    endfunction

"Map CTRL-w to w to make switching windows easier
nnoremap <C-w> w
nnoremap w <C-w>

" ignore case when searching
set ignorecase

"NERDTree mapping to Ctrl-N
nnoremap <C-N> :NERDTreeToggle<CR>

"colorscheme solarized
colorscheme jellybeans
