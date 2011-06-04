" Make Vim more useful, but less Vi compatible
set nocompatible

" Show line numbers
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
set showmatch
set hlsearch

" Clear the search by hitting /<space>
nnoremap <leader><space> :noh<cr>

" Ignore case in searches -- but be smart!
set ignorecase
set smartcase

" Automatically save before commands like :next and :make
set autowrite

" Show the editor mode
set showmode

" Show state of keyboard input
set showcmd

" Allow mouse (is this sacrilege?)
set mouse=a

" Show special characters
"  Show > for tab
set list
set listchars=tab:>-

" Background is dark
" set background=dark

" Set colorscheme
colorscheme molokai

" Use 256 colors
se t_Co=256

" Use wildmenu for command line tab completion
set wildmenu
set wildmode=list:longest,full

" Underline the current line
set cursorline

" The TTY is fast
:set ttyfast

" Disable arrow keys. Force use of <hjkl>. (Oh noes!)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Move by screen line rather than file line (for wrapping).
nnoremap j gj
nnoremap k gk

" Spell check
map <F5> :setlocal spell! spelllang=en_us<cr>

" get rid of dos line endings
map <F6> :%s//\r/g

" Auto completes
autocmd FileType python set omnifunc=pythoncomplete#Complete| highlight OverLength ctermbg=darkgrey ctermfg=white guibg=#592929 | match OverLength /\%80v.\+/
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" GUI (gVim) only
autocmd GUIEnter * colorscheme ir_black
