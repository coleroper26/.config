" Functions
function! Compile()
    let fname = expand('%:r')
    let extension = expand('%:e')
    if extension == "md"
        :w
        silent execute "! pandoc % -o " . fname . ".pdf"
    elseif extension == "tex"
        :w
        silent execute "!pdflatex %"
    elseif extension == "py"
        :w
        execute "!python3 %"
    endif
endfunction
function! Preview()
    let fpath = expand('%:r')
    if !empty(glob(fpath.".pdf"))
        execute "! zathura " . expand('%:r') . ".pdf --fork"
    endif
endfunction
