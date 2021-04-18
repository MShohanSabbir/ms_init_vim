██████  ██     ██    ██  ██████  ██ ███    ██ ███████ 
██   ██ ██     ██    ██ ██       ██ ████   ██ ██      
██████  ██     ██    ██ ██   ███ ██ ██ ██  ██ ███████ 
██      ██     ██    ██ ██    ██ ██ ██  ██ ██      ██ 
██      ███████ ██████   ██████  ██ ██   ████ ███████ 
                                                      
"..........................................................                                                      


call plug#begin('/home/shohan/.config/nvim')

Plug 'vim-airline/vim-airline' " Status/Tabline
Plug 'jlanzarotta/bufexplorer'
Plug 'mhinz/vim-startify'
call plug#end()

 ██████  ██████  ███    ██ ███████ ██  ██████  
██      ██    ██ ████   ██ ██      ██ ██       
██      ██    ██ ██ ██  ██ █████   ██ ██   ███ 
██      ██    ██ ██  ██ ██ ██      ██ ██    ██ 
 ██████  ██████  ██   ████ ██      ██  ██████  


"..........................................................                                                      

nmap <silent> <BS> :nohlsearch<CR>  " disable search highlighting with backspace
let g:mapleader=',' " Set <Leader> to ',' key



set termguicolors " enble 24 bit rgb color
set hlsearch " highlight search results
set smartcase " override ignorecase when search has a caps char
set ignorecase " when searching, ignore case
set incsearch " display search results as you type
set title " make terminal title == the opened file
set linebreak " don't break in the middle of a word
set autoindent " keep indentation from previous line
set autoread " autoload when changes occur
set number " displays the line numbers
syntax on " enable syntax highlighting

" enable scrolloff/scrollside to 5 
if !&scrolloff
  set scrolloff=5
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline



"vim-airline/vim-airline
"......................
	
