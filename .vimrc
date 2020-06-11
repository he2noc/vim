
" vimrc file  
" Helio - 2020.02.22
" version 0.1

"===================================================================


"//---------------------------------------------------
"//Pathogen required 
execute pathogen#infect()
filetype plugin indent on
syntax on


"//----------------------------------------------------
set encoding=utf-8
set clipboard=unnamedplus

set nu "// line numbering
set rnu "// relative line numbers

set guifont=Monospace\ 18
colorscheme koehler 

"//-----------------------------------------------------
"//CUSTOM REMAPS

"// split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
nmap <C-v> :vsplit .<CR>
nmap <C-h> :split .<CR>

"// Force hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"//Page scroll
nnoremap <C-j> <C-y>
nnoremap <C-k> <C-e>



"//-----------------------------------------------------
"// "make your code look pretty"
"//-----------------------------
let python_highlight_all=1
syntax on


"//-----------------------------------------------------
"// PEP 8 - indentation
"// "standard four spaces when you hit tab, ensure your line length doesn’t go 
"// beyond 80 "characters, and store the file in a Unix format so 
"// you don’t get a bunch of conversion issues when checking into GitHub 
"// and/or sharing with other users"
" -----------------------------------

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"//-----------------------------------------------------
"// Enable folding
"//---------------
set foldmethod=indent
set foldlevel=99



"//-----------------------------------------------------
"//-----------------------------------------------------
"// YouCompleteMe
"// "needs some C libraries to be installed 
"// <leader> default is '/'
"//---------------

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>



"//-----------------------------------------------------
"//-----------------------------------------------------
"//Plugins

"//--------------------------
"//Lightlime
autocmd VimEnter * Limelight

set laststatus=2 
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ }	
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 0

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

"===================================================================
