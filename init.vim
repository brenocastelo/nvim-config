call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
Plug 'jiangmiao/auto-pairs'
call plug#end()

colorscheme gruvbox
set background=dark

let g:airline_powerline_fonts = 1

" start git gutter config
set signcolumn=yes

nmap ]h <Plug>(GitGutterNextHunk) "same as default
nmap [h <Plug>(GitGutterPrevHunk) "same as default

nmap ghs <Plug>(GitGutterStageHunk)
nmap ghu <Plug>(GitGutterUndoHunk)

let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
" end git gutter config

" open file explorer when vim opens
autocmd vimenter * NERDTree
" focus editor when vim opens 
autocmd VimEnter * wincmd p
" close file explorer when last file is closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>

nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

