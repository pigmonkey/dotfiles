""""""""""""
" Pathogen "
""""""""""""

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()


"""""""""""
" General "
"""""""""""

" Make Vim more useful, but less Vi compatible
set nocompatible

" Show line numbers
set number

" Enable filetype detection
filetype indent plugin on

" Make backspace work like other apps
set backspace=2

" Display cursor position
set ruler

" Show the status line
set laststatus=2

" Automatically save before commands like :next and :make
set autowrite

" Show the editor mode
set showmode

" Show state of keyboard input
set showcmd

" Allow mouse (is this sacrilege?)
set mouse=a

" Show whitespace characters
set list

" Use wildmenu for command line tab completion
set wildmenu
set wildmode=list:longest,full

" Underline the current line
set cursorline

" Allow modified buffers to go to the background
set hidden

" The TTY is fast
set ttyfast

" Tell the GnuPG plugin to armor new files.
let g:GPGPreferArmor=1

" Tell the GnuPG plugin to sign new files.
let g:GPGPreferSign=1


""""""""
" Tabs "
""""""""

" Tabs should be 4-spaces
set tabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

"  Show > for tab
set listchars=tab:>-

" 4 spaces is a tab, so backspace will work properly
set softtabstop=4

" Follow line indentation
set autoindent


""""""""""
" Search "
""""""""""

" Turn on search highlighting
set showmatch
set hlsearch

" Ignore case in searches -- but be smart!
set ignorecase
set smartcase

" Start searching as the characters are typed
set incsearch


"""""""""""""""""""""
" Keyboard Shorcuts "
"""""""""""""""""""""

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

" Move between windows with CTRL and navigation keys.
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Switch between windows with <Leader><number>
let i = 1
while i <= 9
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile

" Disable search highlighting (<leader><space>)
nnoremap <leader><space> :noh<cr>

" Open a new tab (Ctrl+t)
nnoremap <C-t> :tabnew 

" Toggle paste mode (F2)
set pastetoggle=<F2>

" Write a file with sudo (w!!)
cmap w!! w !sudo tee % >/dev/null

" Escape (kj)
inoremap kj <Esc>

" Escape (jj)
inoremap jj <Esc>

" Toggle relative line numbers (Ctrl+n)
function! g:ToggleNuMode()
  if &nu == 1
     set rnu
  else
     set nu
  endif
endfunction
nnoremap <silent><C-n> :call g:ToggleNuMode()<cr>

" Paste from system clipboard in insert mode (Ctrl+v)
imap <C-V> <ESC>"+gpa

" Yank WORD to system clipboard in normal mode
nmap <leader>c "+yE

" Yank selection to system clipboard in visual mode
vmap <leader>c "+y

" Spell check (F5)
map <F5> :setlocal spell! spelllang=en_us<cr>


"""""""""""
" Styling "
"""""""""""

" Colorscheme
let g:zenburn_high_Contrast=1
colorscheme zenburn

" Use 256 colors
set t_Co=256

" Syntax highlighting
syntax on

" Spell check
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap ctermfg=44 term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare ctermfg=44 term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal ctermfg=44 term=underline cterm=underline

" Default gVim window size.
if has("gui_running")
    set lines=50 columns=100
endif


""""""""""""""""
" Autocomplete "
""""""""""""""""

autocmd FileType python set omnifunc=pythoncomplete#Complete| highlight OverLength ctermbg=darkgrey ctermfg=white guibg=#592929 | match OverLength /\%80v.\+/
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
