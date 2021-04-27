" Colors for statusline
:highlight stat_norm     cterm=bold ctermfg=236 ctermbg=141 gui=bold guifg=#282A36 guibg=#BD93F9
:highlight stat_ins      cterm=bold ctermfg=236 ctermbg=117 gui=bold guifg=#282A36 guibg=#8BE9FD
:highlight stat_dir_norm cterm=bold ctermfg=117 ctermbg=141 gui=bold guifg=#50FA7B guibg=#BD93F9
:highlight stat_dir_ins  cterm=bold ctermfg=141 ctermbg=117 gui=bold guifg=#50FA7B guibg=#8BE9FD
:highlight stat_f_norm   cterm=bold ctermfg=84  ctermbg=141 gui=bold guifg=#50FA7B guibg=#BD93F9
:highlight stat_f_ins    cterm=bold ctermfg=84  ctermbg=117 gui=bold guifg=#50FA7B guibg=#8BE9FD

" Status Line
set statusline=%!StatusLineStart()

function! StatusLineStart()
    execute 'let stat_color = get(g:mode_color, mode()[0], "%#stat_norm#")'
    let stat_color_dir = stat_color == "%#stat_norm#" ? "%#stat_dir_norm#" : "%#stat_dir_ins#"
    let stat_color_file= stat_color == "%#stat_norm#" ? "%#stat_f_norm#" : "%#stat_f_ins#"

  " Left side
    let stat = ""
    let stat .= stat_color
    let stat .= "%M"
    " Filetype glyphs
    let stat .= stat_color_file
    let stat .= " %{get(ft_glyph, &filetype, '['.&filetype.']')}"
    let stat .= stat_color
    " Relative directory with base highlighted
    let stat .= " ".stat_color_dir
    let stat .= "%{expand('%:h')}"
    let stat .= stat_color."/"
    let stat .= stat_color_file
    let stat .= "%{expand('%:t')}"
    let stat .= stat_color

  " Right side
    let stat .= " %#StatusLine#"
    let stat .= "%="
    let stat .= stat_color
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
