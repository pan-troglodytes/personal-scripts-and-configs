" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'habamax/vim-godot'
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-tsserver',
	\ 'coc-eslint',
	\ 'coc-prettier',
	\ 'coc-json',
	\ 'coc-pyright',
	\ 'coc-java',
	\ 'coc-css',
	\ 'coc-r-lsp',
	\ 'coc-java'
	\]


syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set nowrap
set incsearch
set splitbelow splitright
set scrolloff=8
colorscheme default

" rebind navigation of splits
nnoremap <C-h> <C-w>h
nnoremap <C-n> :tabp<CR>
nnoremap <C-m> :tabn<CR>
nnoremap <C-l> <C-w>l

" rebind resizing of split
nnoremap <silent> <Right> <C-w>>
nnoremap <silent> <Left> <C-w><
nnoremap <silent> <Down> <C-w>+
nnoremap <silent> <Up> <C-w>-

nnoremap { }
nnoremap } {
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ? ?<c-g>u
inoremap ! !<c-g>u

let maplader = "\\"
noremap <leader>w :w<cr>

nnoremap <leader>nK :tabedit<cr>
nnoremap <leader>K :tabn<cr>
nnoremap <leader>J :tabp<cr>

nnoremap <leader>nk :vsp<cr>
nnoremap <leader>nj :sp<cr>

nnoremap <leader>h <C-W>h
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>mh <C-W>H
nnoremap <leader>mj <C-W>J
nnoremap <leader>mk <C-W>K
nnoremap <leader>ml <C-W>L

set complete+=kspell
set completeopt=menuone,longest
vnoremap <leader>y "+y


inoremap <leader>" "<++>"

nnoremap <leader>j<space> /<++><cr>vlllc
nnoremap <leader>k<space> ?<++><cr>vlllc
inoremap <leader>l <esc>la
inoremap <leader>L <esc>A<cr>
nnoremap <leader>L A<cr>


" get working directory
nnoremap <leader>gwd :!filePath=%:p ; IFS="/" read -ra wrd <<< "$filePath" ; for (( i=1 ; $i < $(( "${\#wrd[@]}" - 1 )) ; i++ )) ; do wd="$wd""/${wrd[$i]}" ; done ; echo $wd \| xclip -selection clipboard ; unset filePath ; unset wd ; unset IFS<cr><cr>
nnoremap <leader>so :so ~/.config/nvim/init.vim<cr>

inoremap <leader>[ <cr><cr><esc>kA


nnoremap <leader>c :!cat % \| sed 's/\\.*//' \| wc -w<cr>

vnoremap <tab> :norm I<tab><cr>
vnoremap -<tab> :norm $F<tab>x<cr>
nnoremap <leader>t :ter<cr>
nnoremap <leader>qt :vsp<cr>:ter<cr>i
tnoremap <leader><Esc> <C-\><C-n>
set relativenumber
