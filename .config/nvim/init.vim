set nocompatible              "  be iMproved, required
filetype off                  " required


colorscheme frood 
au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme * hi EndOfBuffer ctermbg=none guibg=none
highlight clear CursorLineNR
"highlight Normal guibg=NONE ctermbg=NONE
"highlight Normal guifg=White guibg=None
set guicursor=
set wildmenu
set number
set clipboard+=unnamed

"Vertical line to show boundary of code length convention
"highlight ColorColumn ctermbg=grey guibg=grey
set colorcolumn=85
au ColorScheme * hi ColorColumn ctermbg=DarkGray  
"filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" Set max width of text
set textwidth=85

" On pressing tab, insert 2 spaces
set expandtab
" ctags optimization
 set autochdir
 set tags=tags;

set spell spelllang=en_gb

set ruler 
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")

Plugin 'justinmk/vim-syntax-extra'
"Plugin 'scrooloose/nerdtree'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'felixhummel/setcolors.vim'
Plugin 'dracula/vim'
Plugin 'szw/vim-tags'
Plugin 'majutsushi/tagbar'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'https://github.com/vimwiki/vimwiki'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'vim-scripts/c.vim'
Plugin 'WolfgangMehner/latex-support'
Plugin 'Shougo/deoplete.nvim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'bash-support.vim'
Plugin 'tomtom/tcomment_vim'
"Plugin 'vim-scripts/taglist.vim'
Plugin 'dzeban/vim-log-syntax'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'uiiaoo/java-syntax.vim'
"Plugin 'vimtex'
highlight link JavaIdentifier NONE
call vundle#end()            " required
filetype plugin indent on    " required

let g:deoplete#enable_at_startup = 1
let g:ranger_replace_netrw = 1

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " " " Leader is the space key
let g:mapleader = " "
let g:Latex_MapLeader = "#"
"auto indent for brackets
inoremap {<CR> {<CR>}<Esc>O
" easier write
nmap <leader>w :w!<cr>
" nerdtree
nmap <leader>n :NERDTree<CR>
" easier quit
nmap <leader>q :q<cr>
" silence search highlighting
nnoremap <leader>sh :nohlsearch<Bar>:echo<CR>
" ctags table toggle
nnoremap <silent> <Leader>c :TagbarToggle<CR> 

" move window 1 up e.g.
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

function! ClipboardYank()
    call system('xclip -i -selection clipboard', @@)
  endfunction
  function! ClipboardPaste()
      let @@ = system('xclip -o -selection clipboard')
    endfunction
vnoremap <silent> y y:call ClipboardYank()<cr>
vnoremap <silent> d d:call ClipboardYank()<cr>
nnoremap <silent> p :call ClipboardPaste()<cr>p

"paste from outside buffer
"nnoremap <leader>p :set paste<CR>"*p:set nopaste<CR>
"vnoremap <leader>p <Esc>:set paste<CR>gv"*p:set nopaste<CR>
"copy to outside buffer
"vnoremap <leader>y "*y
"select all
nnoremap <leader>a ggVG
"paste from 0 register
"Useful because `d` overwrites the <quote> register
nnoremap <leader>P "0p
vnoremap <leader>P "0p

nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>

" fill rest of line with characters

autocmd BufNewFile,BufRead *.md set filetype=markdown
