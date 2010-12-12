" Make Vim more useful, but less Vi compatible
set nocompatible

" Show line numbers"
set number

" Syntax highlighting
syntax on

" Make backspace work like other apps
set backspace=2

" Display cursor position
set ruler

" Show the status line
set laststatus=2

" Tabs should be 4-spaces
set tabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

" 4 spaces is a tab, so backspace will work properly
set softtabstop=4

" Follow line indentation
set autoindent

" Start searching as the characters are typed
set incsearch

" Turn on search highlighting
" set hlsearch

" Ignore case in searches
set ic

" Show the editor mode
set showmode

" Show state of keyboard input
set showcmd

" Show special characters
"  Show > for tab
set list
set listchars=tab:>-

" Background is dark
set background=dark

" Set colorscheme
colorscheme ir_black

" Spell check
map <F5> :setlocal spell! spelllang=en_us<cr>

" get rid of dos line endings
map <F6> :%s//\r/g

" Auto completes
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
