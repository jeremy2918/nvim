-- Load plugins
require("plugins")

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
require("nv-lspkind")
require("nv-nvim-autopairs")
require("nv-nerdtree")
require("nv-prettier")
require("nv-startify")
require("nv-statusline")
require("nv-telescope")
require("nv-treesitter")
require("nv-web-devicons")

-- LSP
require('lsp')
require('lsp.lua-ls')
require('lsp.bash-ls')
require('lsp.js-ts-ls')
require('lsp.python-ls')
require('lsp.json-ls')
require('lsp.yaml-ls')
require('lsp.vim-ls')
require('lsp.graphql-ls')
require('lsp.css-ls')
require('lsp.docker-ls')
require('lsp.html-ls')
require('lsp.efm-general-ls')
require('lsp.virtual_text')
