GuiTabline 0
let s:fontsize = 10
let s:fontname = 'Consolas'

:execute "GuiFont! " . s:fontname . ":h" . s:fontsize
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! " . s:fontname . ":h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

let g:tagbar_iconchars = ['▶', '▼']
"Use arrows instead of + and ~ for nerdtree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
NERDTree C:/Users/Rahul/Desktop/Main
