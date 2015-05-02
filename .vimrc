if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

NeoBundle "majutsushi/tagbar"
NeoBundle "mattn/emmet-vim"
NeoBundle "bling/vim-airline"
NeoBundle "scrooloose/nerdtree"
NeoBundle "jistr/vim-nerdtree-tabs"
NeoBundle "scrooloose/syntastic"
NeoBundle "scrooloose/nerdcommenter"
NeoBundle "Raimondi/delimitMate"
NeoBundle "powerman/vim-plugin-ruscmd"
NeoBundle "flazz/vim-colorschemes"
NeoBundle "ap/vim-css-color"
NeoBundle "Shougo/neosnippet"
NeoBundle "tpope/vim-fugitive"

syntax on
colorscheme solarized 
set background=dark

set nu
set nowrap
set showmatch
set cursorline
set ignorecase
set nocompatible
set expandtab

set shiftwidth=4
set tabstop=4
set laststatus=2
set mouse=a
set t_Co=256

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

set fileencodings=utf8,cp1251,cp866
set pastetoggle=<F10>

hi CursorLine cterm=none

let g:NERDTreeWinSize=45
let g:NERDTreeShowHidden=1

let g:delimitMate_expand_cr = 1

let g:neocomplete#enable_at_startup = 1 
let g:neosnippet#snippets_directory='~/.vim/snippets'

let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1

let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts=1
let g:airline_theme='solarized'

let g:syntastic_enable_balloons = 1

autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)"
  \: "\<TAB>"
xmap <C-k>     <Plug>(neosnippet_expand_target)

map <F2> :NERDTreeTabsToggle<CR>
map <F3> :TagbarToggle<CR>
