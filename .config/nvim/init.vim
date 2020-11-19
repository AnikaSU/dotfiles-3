""""""""""""""""""""""""""""""""""""""
"        ________        ________
"       /        \      /        \
"       \        /      \        /
"        |      |        /     /'
"        |      |      /     /'
"        |      |    /     /' 
"        |      |  /     /'     
"        |      |/   ___          
"        |          /  /  _ _ _ _
"        |         ___  / _   _  \
"        |       //  / / / / / / /
"        |     /' / / / / / / / /
"        |   /'  / / / / / / / /
"        |_/'  /__//__//__//___/
"                   
"""""""""""""""""""""""""""""""""""""

let mapleader ="\ "			" Leader como espacio

"""""""""""""""""""
" Plugins
"""""""""""""""""""
call plug#begin()
Plug 'junegunn/goyo.vim'
Plug 'chrisbra/Colorizer'
Plug 'Junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'ntk148v/vim-horizon'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'masukomi/vim-markdown-folding'
"Plug 'ryanoasis/vim-devicons'
"Plug 'bagrat/vim-buffet'
"Plug 'SidOfc/mkdx'
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'godlygeek/tabular'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'tpope/vim-eunuch'
"Plug 'junegunn/limelight.vim'
Plug 'morhetz/gruvbox'
call plug#end()

 set nocompatible
    if has("autocmd")
      filetype plugin indent on
    endif

"""""""""""""""""""
" UI
"""""""""""""""""""
set number relativenumber      " Números de lineas relativos
set ruler		       " Lugar en el documento en la parte inferior de la pantalla
set showcmd		       " Mostrar comandos en la parte inferior de la pantalla
set incsearch		       " Busqueda "en vivo" de palabras con /
set hlsearch		       " Resaltar resultados de busquedas
set wildmenu		       " es a dos puntos lo que counsel es a M-x
set linebreak		       " Corta palabras al final de la misma
set hidden
set laststatus=2	       " Desactiva el modeline
set textwidth=0		       " Desactiva el hard linebreak
set formatoptions+=t
set termguicolors	       "Para tener los colores bien en ciertos temas
syntax enable
set conceallevel=0
let g:pandoc#syntax#conceal#cchar_overrides = {"atx" : "#"}
let g:pandoc#syntax#conceal#urls = 1

""" Temas """""
let g:grubvox_italic = 1
let g:grubvox_contrast_dark = 'hard'
colorscheme horizon

set cursorline			" activa el resaltado de la linea
highlight Comment cterm=italic gui=italic
"
""""" Statusline y ruler """""""
"set rulerformat=%14(%l,%c%)\ %P
set statusline=%#Title#%=%#Title#%F%m%r\ %y\ %#VisualNC#\ %l,%c\ \ %P 

"""""""""""""""""
" Funcionamiento
"""""""""""""""""

set autoread			" Actualizar buffers cuando son editados fuera de vim
au FocusGained,BufEnter * checktime
set ignorecase		        " Ignorar mayúsculas cuando busca
set smartcase		        " Si comienzo a buscar en mayúsculas solo da resultados en mayúsculas
set autoindent		        " Sangría automática cuando se crea una nueva debajo de otra ya indentada
set clipboard=unnamedplus       " Portapapeles del sistema activado
set encoding=utf-8	        " Codificación utf8
set shiftwidth=4	        " TAB mide 4 espacios (no estoy seguro)
set softtabstop=4	        " TAB mide 4 espacios (no estoy seguro)
set smartindent		        " Sangría automática en lineas nuevas cerradas por llaves
set smarttab		        " No se, pero sirve para borrar tabs
set virtualedit=block	        " Cursor libre cuando se usa visualblock
set backspace=eol,start,indent  " Backspace funciona bien con tabs
set whichwrap+=<,>,h,l	        " h y j respeta tabs
set undofile			" Conserva el undo después de cerrado el archivo gracias a una caché
set undodir=~/.config/nvim/undodir " La caché a usar
"autocmd FileType markdown TableModeEnable
set mouse=a			" Soporte para mouse

"""""""""""""
" Maping
"""""""""""""

" Moverse con jk en lugar de gj y gk 
nnoremap <expr> j (v:count > 4 ? "m'" . v:count . 'j' : 'gj')
nnoremap <expr> k (v:count > 4 ? "m'" . v:count . 'k' : 'gk')

"nnoremap <leader><tab> /<++><CR>cw

"Activar Goyo con F6
noremap <F6> :Goyo <CR>
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!
"autocmd  User GoyoLeave 

"Activar spellcheck con F5
noremap <F5> :setlocal spell! spelllang=es<CR>

" Abrir con space space
noremap <leader><leader> :silent LfCurrentDirectory<CR>
noremap <leader>f :silent Files <CR>

" Teclas desactivadas
"""""""""""""""""""""
noremap q: <Nop>
nnoremap Q <Nop>


"autocmd FileType markdown inoremap ses<tab> <esc>:read ~/.config/nvim/snips/sesion<CR>kddA 
"autocmd FileType markdown inoremap sec<tab> <esc>:read ~/.config/nvim/snips/secuencia<CR>kdd2wcw 
"autocmd FileType markdown inoremap sec<tab> <esc>:read ~/.config/nvim/snips/secuencia<CR>kdd2wcw 
