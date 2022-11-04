set relativenumber
set ignorecase
set smartcase

call plug#begin()
Plug 'sbdchd/neoformat'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'prabirshrestha/vim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind-nvim'
Plug 'morhetz/gruvbox'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
call plug#end()
colorscheme gruvbox
luafile ~/.config/nvim/lua/lsp/lsp.lua
hi Normal guibg=NONE ctermbg=NONE
autocmd BufWritePre,TextChanged,InsertLeave *.* Neoformat 
nnoremap <leader>ff <cmd> Telescope find_files <cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').find_files{ cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1] }<cr>
set updatetime=50
set noswapfile
set tabstop=2

