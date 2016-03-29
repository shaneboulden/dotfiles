set nocompatible              " be iMproved, required
filetype plugin indent on
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'altercation/vim-colors-solarized'
Plugin 'klen/python-mode'

set laststatus=2
set noshowmode
set noruler
set background=dark
set expandtab
set softtabstop=2
set shiftwidth=2
"Let backspace do its thang
set backspace=indent,eol,start
"matching end with dos, just hit %
runtime macros/matchit.vim


let g:airline_powerline_fonts = 1
let g:solarized_termcolors = 256
let g:solarized_termtrans=1

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


    " EITHER blink the line containing the match...
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

" All of your Plugins must be added before the following line
call vundle#end()            " required

colorscheme solarized

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
