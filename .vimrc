set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Bundle 'matze/vim-move'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'c9s/phpunit.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Bundle 'jiangmiao/auto-pairs'

" --- Plugin in test  --- "
"Plugin 'shawncplus/phpcomplete.vim'
"Bundle 'stephpy/vim-php-cs-fixer'
"Plugin 'Valloric/YouCompleteMe' " Tenho que utilizar o Python/Python3 e usar o ctags
"Bundle 'Shougo/vimproc', {'do' : 'make'}
"Bundle 'Shougo/unite.vim'
"Bundle 'm2mdas/phpcomplete-extended'

"Bundle 'jistr/vim-nerdtree-tabs'


call vundle#end()

" --- GLOBAL --- "
set encoding=utf-8
set t_Co=256
set mouse=a
set number
set noshowmode
set noswapfile
set nowrap
set autoread
set scrolloff=200 "Posicionamento de scroll

colorscheme desert

set expandtab
set smartindent
set shiftwidth=2
set softtabstop=2

set laststatus=2
set timeoutlen=1000
set ttimeoutlen=0

" ---  MAP  --- "
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

" ---  PLUGIN's CONFIG --- "
let g:move_key_modifier = 'C'

let g:phpunit_options = ['--tap']
let g:phpunit_testroot = 'tests/'
let g:phpunit_srcroot = ''
let g:phpunit_bin = 'phpunit "--link $(docker ps -qf "name=laravel.*") --link db --link cache" --configuration="phpunit.xml" '

let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

let g:user_emmet_expandabbr_key = '<C-e>'
let g:use_emmet_complete_tag = 1

let g:ctrlp_custom_ignore = 'vendor/'
