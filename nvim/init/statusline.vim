" Colors for statusline
:highlight stat_norm     cterm=bold ctermfg=117 ctermbg=60  gui=bold guifg=#8BE9FD guibg=#6272A4
:highlight stat_ins      cterm=bold ctermfg=84  ctermbg=60  gui=bold guifg=#50FA7B guibg=#6272A4
:highlight stat_dir_norm cterm=bold ctermfg=117 ctermbg=141 gui=bold guifg=#50FA7B guibg=#BD93F9
:highlight stat_dir_ins  cterm=bold ctermfg=141 ctermbg=117 gui=bold guifg=#50FA7B guibg=#8BE9FD
:highlight stat_f_norm   cterm=bold ctermfg=84  ctermbg=141 gui=bold guifg=#50FA7B guibg=#BD93F9
:highlight stat_f_ins    cterm=bold ctermfg=84  ctermbg=117 gui=bold guifg=#50FA7B guibg=#8BE9FD

" Status Line
set statusline=%!StatusLineStart()

function! StatusLineStart()
    execute 'let stat_color = get(g:mode_color, mode()[0], "%#stat_norm#")'

  " Left side
    let stat = ""
    let stat .= stat_color
    let stat .= "%M"
    " Filetype glyphs
    let stat .= " %{get(ft_glyph, &filetype, '['.&filetype.']')}"
    " Relative directory with base highlighted
    let stat .= "%{expand('%:h')}"
    let stat .= "/"
    let stat .= "%{expand('%:t')}"

  " Right side
    let stat .= stat_color
    let stat .= "%="
    let stat .= " %c:%l/%L"
    let stat .= " %p%%"
    let stat .= " [%n] "
    return stat
endfunction

let g:mode_color = {
    \"i" : "%#stat_ins#",
    \"R" : "%#stat_ins#",
\}

let g:ft_glyph = {
    \"vim"                      : " ",
    \"python"                   : " ",
    \"verilog_systemverilog"    : " ",
    \"haskell"                  : " ",
    \"c"                        : " ",
    \"java"                     : " ",
    \"markdown"                 : " ",
    \"php"                      : " ",
    \"sh"                       : " ",
\}
