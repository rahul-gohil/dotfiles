cd ~/Main/Projects
set number
set mouse=a
set termguicolors

call plug#begin('~/.config/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/tagbar'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Colorschemes
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'bignimbus/pop-punk.vim'

call plug#end()
        
lua require("bufferline").setup{ options = { offsets = {{filetype = "nerdtree", text = "File Explorer", highlight = "Directory", text_align = "center"}}, } }

let g:python3_host_prog = '/usr/local/bin/python3'
"let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:airline_theme = 'purify'
let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   Most Recently Used']            },
  \ { 'type': 'dir',       'header': ['   Most Recently Used '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ ]
let g:tagbar_iconchars = ['▶', '▼']
" Use arrows instead of + and ~ for nerdtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" For hidden files and directories
let NERDTreeShowHidden=1

" For devicons to work correctly and not wrap in square brackets
if !exists('g:syntax_on')
	syntax enable
endif

colorscheme purify 
" Highlight the line numbers
highlight LineNr guifg=LightGrey

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree ~/Main/Projects | wincmd p

