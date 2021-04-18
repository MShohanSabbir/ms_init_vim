
" ########  ##       ##     ##  ######   #### ##    ##  ######  
" ##     ## ##       ##     ## ##    ##   ##  ###   ## ##    ## 
" ##     ## ##       ##     ## ##         ##  ####  ## ##       
" ########  ##       ##     ## ##   ####  ##  ## ## ##  ######  
" ##        ##       ##     ## ##    ##   ##  ##  ####       ## 
" ##        ##       ##     ## ##    ##   ##  ##   ### ##    ## 
" ##        ########  #######   ######   #### ##    ##  ######  

call plug#begin('/home/shohan/.config/nvim')
Plug 'flazz/vim-colorschemes'  
Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'junegunn/limelight.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-unimpaired'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" THEME
colorscheme gruvbox

"MARKDOWN Settings

"....................
"tpope/vim-markdown
"....................



"-----------------------------------------------------------------------
let g:mkdp_auto_start = 1 "auto-open preview window when opening a markdown file
let g:mkdp_auto_close = 0 "auto -close preview window when leaving a markdown buffer
let g:mkdp_refresh_slow = 1 "refresh when leaving insert mode
let g:mkdp_markdown_css ='/home/shohan/github-md/github-markdown-css-main'


"Limelight settings
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

set number
set relativenumber

let g:netrw_banner = 0
let g:netrw_liststyle = 4
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Hexplore
augroup END

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use K to show documentation in preview window.
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>




