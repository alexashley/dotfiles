execute pathogen#infect()
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized

set number 
set noerrorbells
set novisualbell
set vb t_vb=
" don't help the children
set shortmess+=I
 
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch
set magic

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set laststatus=2

set ai
set si
set wrap
set spell

set noswapfile

let &colorcolumn=join(range(81,999),",")

"better line wrapping
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk

"split navigation ^w j to just ^j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

command W w
command Q q

set noshowmode

set encoding=utf-8
set t_Co=256
" extension {{{
map <C-e> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:airline_powerline_fonts=1

" disable folding for vim-markdown
let g:vim_markdown_folding_disabled=1

" esc immediately 
set timeoutlen=1000 ttimeoutlen=0

function CompileSCSS()
    let scss=expand('%:p')
    let css=expand('%:p:r') . '.css'
    execute '!scss ' .  scss . ' ' . css
endfunction

" automatically compile scss files on a save
autocmd BufWritePost,FileWritePost *.scss :silent call CompileSCSS()
