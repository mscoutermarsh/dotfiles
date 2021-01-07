" bind K to search word under cursor
nnoremap K :Rg <C-R><C-W><CR>
cnoreabbrev <expr> Ag ((getcmdtype() is# ':' && getcmdline() is# 'Ag')?('Rg'):('Ag'))
