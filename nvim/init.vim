set relativenumber
set ignorecase
set smartcase

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'github/copilot.vim'
Plug 'sbdchd/neoformat'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
call plug#end()
colorscheme gruvbox
luafile ~/.config/nvim/lsp.lua
hi Normal guibg=NONE ctermbg=NONE
autocmd BufWritePre,TextChanged,InsertLeave *.* Neoformat
nnoremap <leader>ff <cmd> Telescope find_files <cr>
