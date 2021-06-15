set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Bundle 'matze/vim-move'
"Plugin 'editorconfig/editorconfig-vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'mattn/emmet-vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-surround'
"Bundle 'jiangmiao/auto-pairs'
"Plugin 'chriskempson/base16-vim'

call vundle#end()

" --- GLOBAL --- "
set encoding=utf-8
set termguicolors
set t_Co=256
set mouse=a
set number
set noshowmode
set noswapfile
set nowrap
set autoread
set scrolloff=200 "Posicionamento de scroll

syntax on
"colorscheme base16-atelier-forest

set expandtab
set smartindent
set shiftwidth=2
set softtabstop=2

set laststatus=2
set timeoutlen=1000
set ttimeoutlen=0

" ---  MAP  --- "
"let base16colorspace=256
let mapleader = ","
nmap <Bslash> :NERDTreeToggle<CR>
nmap <C-F> :CtrlP<CR>
nmap <C-N> :tabnew<CR>
"nmap <C-Tab> :gt<CR>
"nmap <C-S-Tab> :gT<CR>
"nmap <Left> gT<CR>
"nmap <Right> gt<CR>
"nmap <Up> <nop>
"nmap <Down> <nop>

autocmd BufNewFile,BufRead *.cshtml set syntax=html

" ---  PLUGIN's CONFIG --- "

"### AIRLine ###"
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

"### ControlP ###"
let g:ctrlp_custom_ignore = 'bin\|obj\|node_modules'
