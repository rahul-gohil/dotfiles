set number
let g:tagbar_ctags_bin = 'C:\Program Files\ctags\ctags'
let g:airline_theme = 'pop_punk'

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Most Recently Used']            },
        \ { 'type': 'dir',       'header': ['   Most Recently Used '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ ]

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'bignimbus/pop-punk.vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/tagbar'
Plug 'ap/vim-buftabline'

call plug#end()

"For devicons to work correctly and not wrap in square brackets
if !exists('g:syntax_on')
	syntax enable
endif

colorscheme pop-punk

