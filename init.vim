" ########  ##       ##     ##  ######   #### ##    ##  ######  
" ##     ## ##       ##     ## ##    ##   ##  ###   ## ##    ## 
" ##     ## ##       ##     ## ##         ##  ####  ## ##       
" ########  ##       ##     ## ##   ####  ##  ## ## ##  ######  
" ##        ##       ##     ## ##    ##   ##  ##  ####       ## 
" ##        ##       ##     ## ##    ##   ##  ##   ### ##    ## 
" ##        ########  #######   ######   #### ##    ##  ######  

call plug#begin('/home/shohan/.config/nvim')
Plug 'flazz/vim-colorschemes'  
Plug 'junegunn/limelight.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'rakr/vim-two-firewatch'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline' " Status/Tabline
Plug 'NLKNguyen/papercolor-theme'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
call plug#end()

"...................
"!!!!!!!!!!!!!!!!!!!
"...................
let g:mapleader=',' " Set <Leader> to ',' key

"...................
"APPEARANCE SETTINGS
"...................
set number " make line numbers visible
" set relativenumber " set relativenumber
set title " make terminal title == the opened file
set termguicolors " enble 24 bit rgb color
syntax on " enable syntax highlighting
set autoindent " keep indentation from previous line
set linebreak " don't break in the middle of a word


set t_Co=256   " This is may or may not needed.
set background=dark
colorscheme PaperColor

" Always show 5 Lines above the current line and 5 lines below the current
" line 
if !&scrolloff
  set scrolloff=5
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline



"...................
" SEARCH SETTINGS
"...................
nmap <silent> <BS> :nohlsearch<CR>  " disable search highlighting with backspace
set hlsearch " highlight search results
set smartcase " override ignorecase when search has a caps char
set ignorecase " when searching, ignore case
set incsearch " display search results as you type

"...................
" OTHER
"...................
let g:netrw_banner = 0
let g:netrw_liststyle = 4
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

"......................
"COC SETTINGS
"......................

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j

"Mappings for resizing windows
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <c-Right> <C-w>>

" Use <C-l> for trigger snippet expand.

" Use <C-l> for trigger snippet expand.
imap <S>. <Plug>(coc-snippets-expand)

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)




