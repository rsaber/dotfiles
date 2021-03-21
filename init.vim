
" Map Escape to jj,jk,kj
imap jj <Esc>
imap jk <Esc>
imap kj <Esc>

" Add Hybrid Line Numbers
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

let mapleader=","
nnoremap <silent> <Leader>f :Rg<CR>

let g:ycm_autoclose_preview_window_after_completion = 1

nmap - <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

set mouse=a

" NERDTree - Start NERDTree and leave cursor out
autocmd VimEnter * NERDTree | wincmd p 

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

call plug#begin(stdpath('config') . '/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'majutsushi/tagbar'
Plug 'sirver/ultisnips'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 't9md/vim-choosewin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
