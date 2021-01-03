" My Neo Vim Config
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ncm2/ncm2-tern',  {'do': 'yarn'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'ncm2/nvim-typescript', {'do': './install.sh'}
call plug#end()

"enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

"IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

packadd! dracula
syntax enable
colorscheme dracula


set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
set shell=sh

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

" NerdTree Configs
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <S-h> :tabprevious<CR>
nnoremap <S-l> :tabnext <CR>
nnoremap <S-n> :tabnew <CR>
noremap <S-c> :tabclose<CR>

:imap <tab>

let g:NERDTreeGitStatusUseNerdFonts = 1

"g:python3_host_prog=/user/bin/python3

"NCM2 Config

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
