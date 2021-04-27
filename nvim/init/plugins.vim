" Plugins with Plugged
call plug#begin('~/.vim/plugged')

" Plug 'valloric/youcompleteme'
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
" Plug 'theia-ide/typescript-language-server'

Plug 'mbbill/undotree'
Plug 'preservim/nerdtree'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'tpope/vim-surround'
Plug 'aperezdc/vim-template'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

colorscheme dracula

" neovim-lspconfig for tsserver
