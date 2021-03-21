-- Load plugins
require("plugins")

-- Load defaults
require('theme')
require('mappings')
require('settings')

-- Load config
require("nv-bufferline")
require("nv-closetag")
require("nv-colorizer")
require("nv-comment")
require("nv-compe")
require("nv-gitsigns")
require("nv-indentLine")
require("nv-lspconfig")
require("nv-lspkind")
require("nv-nvim-autopairs")
require("nv-nvimtree")
require("nv-startify")
require("nv-statusline")
require("nv-telescope")
require("nv-treesitter")
require("nv-web-devicons")

vim.g.python3_host_prog="/usr/bin/python3"
vim.api.nvim_exec([[au BufWrite * :Autoformat]], true)
