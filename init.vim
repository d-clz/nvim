" neovim plugins ~/.local/share/nvim/plugged

" always single quotes
call plug#begin('~/.local/shared/nvim/plugged')

" easy alignment
Plug 'junegunn/vim-easy-align'

" On demand loading
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

"Goyo fullscreen
Plug 'junegunn/goyo.vim'

" deopendency autocomplete
Plug 'zchee/deoplete-jedi'

" autopair quotes and brackets
Plug 'jiangmiao/auto-pairs'

" code folding
Plug 'tmhedberg/SimpylFold'

" lighiline statusbar
Plug 'itchyny/lightline.vim'

" Onedark theme
Plug 'joshdick/onedark.vim'

call plug#end()

" setting neovim properties
set nu
set tabstop=4 shiftwidth=4 expandtab
syntax on

" set colorscheme
color onedark
let g:lightline = {
	\ 'colorscheme': 'onedark',
	\}
