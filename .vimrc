set rtp+=/opt/homebrew/opt/fzf

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Security.
Plug 'ciaranm/securemodelines'
" Jump to any location specified by two characters.
Plug 'justinmk/vim-sneak'
" Plug ‘dracula/vim’

" Make the yanked region apparent!
Plug 'machakann/vim-highlightedyank'
" navigate and highlight matching words
Plug 'andymass/vim-matchup'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" git status flags
Plug 'Xuyuanp/nerdtree-git-plugin'
" icons for NERDtree
Plug 'ryanoasis/vim-devicons'
" shows a git diff in the sign column
Plug 'airblade/vim-gitgutter'
" trying this out instead of NERDcommenter (gcc to comment a line)
Plug 'tpope/vim-commentary'
" highlights patterns and ranges (can use ? as ex-command)
Plug 'markonm/traces.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'

" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf.vim'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
" highlight unique letters on f/F/t/T
Plug 'unblevable/quick-scope'
" hit * and # to search for a text block in visual mode
Plug 'nelstrom/vim-visual-star-search'
" better . command repeating
Plug 'tpope/vim-repeat'
" git things inside vim
Plug 'tpope/vim-fugitive'
" use gl/gL to align text by some character
Plug 'tommcdo/vim-lion'
" personal wiki for vim
Plug 'vimwiki/vimwiki'
" distraction free writing
Plug 'junegunn/goyo.vim'
"snippets for various programming languages (vim-snippets require an engine)
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" color theme
Plug 'morhetz/gruvbox'
" initialize plugin system
call plug#end()

if has('nvim')
    set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
    set inccommand=nosplit
    noremap <C-q> :confirm qall<CR>
end

" experimental - not sure if i like it
" deal with colors
if !has('gui_running')
  set t_Co=256
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif

let base16colorspace=256

autocmd vimenter * ++nested colorscheme gruvbox

" =============================================================================
" # Editor settings
" =============================================================================
set background=dark     " Setting dark mode
set belloff=all         " No sounds
set backspace=2         " Backspace in insert mode works like normal editor

" below three are needed for vimwiki
syntax on               " syntax highlighting
filetype plugin on      " nerdcommenter says that this is needed
set nocompatible

set ttyfast
set lazyredraw

set autoindent          " auto indenting
set number              " also show current absolute line
set relativenumber      " line numbers
filetype indent on      " activates indenting for files
set colorcolumn=80
set ruler
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set encoding=UTF-8      " vim-devicons require this
set expandtab           " always uses spaces instead of tab characters
set updatetime=300      " Faster completion
set timeoutlen=500      " By default timeoutlen is 1000 ms
set splitbelow splitright " Splits open at the bottom and right unlike vim defaults.
" Sane splits
set splitright
set splitbelow
" Permanent undo
set undodir=~/.vimdid
set undofile

"" vimdiff
set diffopt+=iwhite " No whitespace in vimdiff
" Make diffing better: https://vimways.org/2018/the-power-of-diff/
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic

" Proper search
set incsearch
set ignorecase
set smartcase
set gdefault

let mapleader="\<Space>"
" Quick-save
nmap <leader>w :w<CR>

" Turn the word under cursor to uppercase
nnoremap <c-u> <Esc>g~iw<Esc>
" Turn the current word into title case
nnoremap <c-t> <Esc>b~lea<ESC>

" Better completion
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Disable autocomments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" trying to make lightline work
set laststatus=2
set noshowmode

" Open new file adjacent to current file
nnoremap <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>
" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
" <leader><leader> toggles between buffers
nnoremap <leader><leader> <c-^>

" jk sends an ESC command 
inoremap jk <ESC>
nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap <C-e> $
map <C-p> :Files<CR>
nmap <leader>; :Buffers<CR>

" Cycle through splits.
nnoremap <S-Tab> <C-w>w

" Toggle Goyo
map <leader>f :Goyo<CR>

" Move lines
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

" SirVer/ultisnips
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" Only underline the highlights instead of using custom colors.
"highlight QuickScopePrimary gui=underline cterm=underline
"highlight QuickScopeSecondary gui=underline cterm=underline

" Decent wildmenu
set wildmenu
set wildmode=list:longest
set wildignore=.hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

let g:secure_modelines_allowed_items = [
                \ "textwidth",   "tw",
                \ "softtabstop", "sts",
                \ "tabstop",     "ts",
                \ "shiftwidth",  "sw",
                \ "expandtab",   "et",   "noexpandtab", "noet",
                \ "filetype",    "ft",
                \ "foldmethod",  "fdm",
                \ "readonly",    "ro",   "noreadonly", "noro",
                \ "rightleft",   "rl",   "norightleft", "norl",
                \ "colorcolumn"
                \ ]
