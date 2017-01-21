""""""""""""
" Vundle "
""""""""""""

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'jamessan/vim-gnupg'
Plugin 'roman/golden-ratio'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'tpope/vim-markdown'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ledger/vim-ledger'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'chriskempson/base16-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'hynek/vim-python-pep8-indent'


"""""""""""
" General "
"""""""""""

" Make Vim more useful, but less Vi compatible
set nocompatible

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

" Set the minimum number of lines to keep above and below cursor
set scrolloff=5


""""""""""""""""
" Line Numbers "
""""""""""""""""

" Default to absolute line numbers.
set nu


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

" Remap colon to semicolon.
nnoremap ; :

" Toggle folds with space.
nnoremap <Space> za   
vnoremap <Space> za

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

" Set smooth scrolling
:map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
:map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

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
nmap <leader>y "+yE

" Yank selection to system clipboard in visual mode
vmap <leader>y "+y

" Spell check
map <leader>s :setlocal spell! spelllang=en_us<cr>


"""""""""""
" Styling "
"""""""""""

" Colorscheme
set background=dark
let base16colorspace=256
colorscheme base16-tomorrow

" Syntax highlighting
syntax enable

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


""""""""""""""""""""
" GnuPG Extensions "
""""""""""""""""""""

" Tell the GnuPG plugin to armor new files.
let g:GPGPreferArmor=1

" Tell the GnuPG plugin to sign new files.
let g:GPGPreferSign=1

augroup GnuPGExtra
    " Set extra file options.
    autocmd BufReadCmd,FileReadCmd *.\(gpg\|asc\|pgp\) call SetGPGOptions()
    " Automatically close unmodified files after inactivity.
    autocmd CursorHold *.\(gpg\|asc\|pgp\) quit
augroup END

function SetGPGOptions()
    " Set updatetime to 1 minute.
    set updatetime=60000
    " Fold at markers.
    set foldmethod=marker
    " Automatically close all folds.
    set foldclose=all
    " Only open folds with insert commands.
    set foldopen=insert
endfunction


""""""""
" Mutt "
""""""""

" Delete quoted signatures.
au BufRead /tmp/mutt* normal :g/^\(> \)--\s*$/,/^$/-1d/^$


"""""""""""""""""""
" Temporary Files "
"""""""""""""""""""
" https://gist.github.com/tejr/5890634

" Don't backup files in temp directories or shm
if exists('&backupskip')
    set backupskip+=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*
endif

" Don't keep swap files in temp directories or shm
if has('autocmd')
    augroup swapskip
        autocmd!
        silent! autocmd BufNewFile,BufReadPre
            \ /tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*
            \ setlocal noswapfile
    augroup END
endif

" Don't keep undo files in temp directories or shm
if has('persistent_undo') && has('autocmd')
    augroup undoskip
        autocmd!
        silent! autocmd BufWritePre
            \ /tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*
            \ setlocal noundofile
    augroup END
endif

" Don't keep viminfo for files in temp directories or shm
if has('viminfo')
    if has('autocmd')
        augroup viminfoskip
            autocmd!
            silent! autocmd BufNewFile,BufReadPre
                \ /tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*
                \ setlocal viminfo=
        augroup END
    endif
endif


""""""""
" Wiki "
""""""""

let g:vimwiki_list = [{
    \ 'path': '~/documents/wiki',
    \ 'syntax': 'markdown',
    \ 'ext': '.md',
    \ }]
