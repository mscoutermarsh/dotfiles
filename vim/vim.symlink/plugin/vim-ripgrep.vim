" bind K to search word under cursor
nnoremap K :Rg "\b<C-R><C-W>\b"<CR>:cw<CR>
cnoreabbrev <expr> Ag ((getcmdtype() is# ':' && getcmdline() is# 'Ag')?('Rg'):('Ag'))
