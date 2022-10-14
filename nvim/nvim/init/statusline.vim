" Colors for statusline
" :highlight stat_color   cterm=bold ctermfg=117 ctermbg=60 gui=bold guifg=#8BE9FD guibg=#6272A4
:highlight col_filename   cterm=bold ctermfg=117 ctermbg=60
hi User1 cterm=bold ctermfg=167
 
" left
set statusline=%*                   " original color
set statusline+=%m                  " edited?
set statusline+=%y                  " filetype
set statusline+=\ %f                " path

" right
set statusline+=%*                  " original color
set statusline+=%=                  " section
set statusline+=%c:%l/%L            " column:row/lines
set statusline+=\ %p%%
set statusline+=\ [%n] 
