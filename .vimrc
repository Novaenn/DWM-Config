set encoding=UTF-8

set showcmd
:set number

syntax on

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Da pulire
call plug#begin()

Plug 'ghifarit53/tokyonight-vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'alvan/vim-closetag'
Plug 'ap/vim-css-color'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"Keybind per aprire NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

"Plug 'dylanaraps/wal.vim'
"colorscheme wal

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

"Workaround per lo swallow con il vimlivepreview per i file LaTeX
let g:livepreview_previewer = 'zathura'

"Splitta qualsiasi altro processo dentro vim sotto
set splitbelow

"Imposta viminfo dentro .vim e non dentro $HOME
set viminfo+=n~/.vim/viminfo

"Keybind per entrare in paste mode
set pastetoggle=<F3>
