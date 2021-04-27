" ============================================= GENERAL ==============================================

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Comprehensive Terminal
" nnoremap <leader>t :split<CR><BAR><C-w>J
nnoremap <leader>t :split term://bash<CR><BAR><C-w>J
tnoremap <Esc> <C-\><C-n>



" ============================================== BUFFER ==============================================
" Buffer Change
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

" Better Window Navigation 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better Window Resizing
nnoremap <silent> <C-Up>    :resize -2<CR>
nnoremap <silent> <C-Down>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>


" ============================================== PLUGIN ==============================================

" NERDTree
nnoremap <C-t> :NERDTreeToggle %<CR>


" ============================================= FUNCTION =============================================

" Compile()
nnoremap <leader>q :call Compile()<CR>
nnoremap <leader>v :source $HOME/.config/nvim/init.vim<CR>

" Preview()
nnoremap <leader>p :call Preview()<CR><CR>
