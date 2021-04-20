-- Load plugins
require("plugins")
require("config")

-- Load defaults
require('theme')
require('mappings')
require('settings')


-- Load config
require("nv-barbar")
require("nv-closetag")
require("nv-colorizer")
require("nv-comment")
require("nv-compe")
require("nv-gitsigns")
require("nv-indentLine")
require("nv-lspconfig")
-- require("nv-lspinstall")
require("nv-lspkind")
require("nv-nvim-autopairs")
require("nv-prettier")
require("nv-startify")
require("nv-statusline")
require("nv-telescope")
require("nv-treesitter")
require("nv-ultisnip")
require("nv-web-devicons")

-- LSP
require('lsp')
require('lsp.bash-ls')
require('lsp.clangd')
require('lsp.css-ls')
require('lsp.docker-ls')
require('lsp.efm-general-ls')
require('lsp.graphql-ls')
require('lsp.html-ls')
require('lsp.js-ts-ls')
require('lsp.json-ls')
require('lsp.lua-ls')
require('lsp.python-ls')
require('lsp.svelte-ls')
require('lsp.tailwindcss-ls')
require('lsp.terraform-ls')
require('lsp.vim-ls')
require('lsp.virtual_text')
require('lsp.yaml-ls')

-- Load .vim config
vim.cmd("source ~/.config/nvim/vim/nv-nerdtree.vim")
