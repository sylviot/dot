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

" --- Plugin in test  --- "
"Plugin 'Valloric/YouCompleteMe' " Tenho que utilizar o Python/Python3 e usar o ctags
"Plugin 'shawncplus/phpcomplete.vim'
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
nmap <Bslash> :NERDTreeToggle<CR>
nmap <C-F> :CtrlP<CR>
nmap <C-N> :tabnew<CR>
"nmap <C-Tab> :gt<CR>
"nmap <C-S-Tab> :gT<CR>
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Down> <C-W><C-J>

" ---  PLUGIN's CONFIG --- "
let g:move_key_modifier = 'C'

let g:phpunit_testroot = 'tests/'
let g:phpunit_srcroot = ''
let g:phpunit_bin = 'phpunit "--link app --link db --link cache" --configuration="phpunit.xml" '

let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

let g:user_emmet_expandabbr_key = '<C-e>'
let g:use_emmet_complete_tag = 1

let g:ctrlp_custom_ignore = 'vendor/'

" ========================== Auto-closing of brackets ==========================
" Coisa do JonathanHR
inoremap {<CR> {<C-o>o}<C-o>O
let s:pairs={ '<': '>', '{': '}', '[': ']', '(': ')', '«': '»', '„': '“', '“': '”', '‘': '’', }

call map(copy(s:pairs), 'extend(s:pairs, {v:val : v:key}, "keep")')
function! InsertPair(left, ...)
  let rlist=reverse(map(split(a:left, '\zs'), 'get(s:pairs, v:val, v:val)'))
  let opts=get(a:000, 0, {})
  let start   = get(opts, 'start',   '')
  let lmiddle = get(opts, 'lmiddle', '')
  let rmiddle = get(opts, 'rmiddle', '')
  let end     = get(opts, 'end',     '')
  let prefix  = get(opts, 'prefix',  '')
  let start.=prefix
  let rmiddle.=prefix
  let left=start.a:left.lmiddle
  let right=rmiddle.join(rlist, '').end
  let moves=repeat("\<Left>", len(split(right, '\zs')))
  return left.right.moves
endfunction
noremap! <expr> {   InsertPair('{')
noremap! <expr> [   InsertPair('[')
noremap! <expr> (   InsertPair('(')
noremap! <expr> <   InsertPair('<')
noremap! <expr> \"   InsertPair('"')
