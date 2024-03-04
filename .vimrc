" See https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/ for more information on Vim configuration.

" GENERAL SETTINGS ------------------------------------------------------ {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable delete, backspace, and arrow keys in insert mode.
set backspace=indent,eol,start

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Your terminal will handle the mouse.
set mouse=a

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')


" Base Plugins
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'pantharshit00/vim-prisma'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/vim-markdown'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'

Plug 'github/copilot.vim'

call plug#end()

" }}}

" PLUGIN SETTINGS -------------------------------------------------------- {{{

" disable folding by default
let g:vim_markdown_folding_disabled = 1

" NERDTree Config

let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '\~$', '\.swp$']

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" }}}

" Coc extensions ---------------------------------------------------------- {{{

let g:coc_global_extensions = ['coc-tsserver']

" }}}

" MAPPINGS --------------------------------------------------------------- {{{
:
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <C-f> :NERDTreeFocus<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <C-n> :NERDTree<CR>

" Prettier format
nmap <leader>pf :Prettier<CR>

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}::
