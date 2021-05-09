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
" using tab for autocompletions
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" autopair quotes and brackets
Plug 'jiangmiao/auto-pairs'

" code folding
Plug 'tmhedberg/SimpylFold'

" lighiline statusbar
Plug 'itchyny/lightline.vim'

" Onedark theme
Plug 'joshdick/onedark.vim'

" iawriter
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'subnut/vim-iawriter'

call plug#end()

" setting neovim properties
set number
set tabstop=4 shiftwidth=4 expandtab
syntax on

" set colorscheme
color onedark
" transparent background
hi Normal guibg=NONE ctermbg=NONE

let g:lightline = {
	\ 'colorscheme': 'onedark',
	\}
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle

" iawriter config
let g:iawriter_force_defaults = 1
