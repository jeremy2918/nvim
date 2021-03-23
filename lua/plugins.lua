 -- Check if packer is installed (~/local/share/nvim/site/pack)

local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])
return require("packer").startup(
    function()
        -- Plugin Manager
        use {"wbthomason/packer.nvim", opt = true}
        -- Theme
        use {"joshdick/onedark.vim"}
        -- Icons
        use {"kyazdani42/nvim-web-devicons"}
        -- Status bar theme
        use {"glepnir/galaxyline.nvim"}
        -- Git Status Line
        use {"lewis6991/gitsigns.nvim",
          requires = {
            "nvim-lua/plenary.nvim"
          }
        }
        -- Color codes highlighting
        use {"norcalli/nvim-colorizer.lua"}
        -- Buffers config
        use {"romgrk/barbar.nvim"}
        -- Explorer
        use {"preservim/nerdtree"}
		use {"Xuyuanp/nerdtree-git-plugin"}
        -- Better syntax highlighting
        use {"nvim-treesitter/nvim-treesitter"}
        -- Display indentation level
        use {'Yggdroot/indentLine'}
        -- Dev icons
        use {"ryanoasis/vim-devicons"}
        -- Autoformat
        use {"sbdchd/neoformat"}
        -- Language server client
        use {"neovim/nvim-lspconfig"}
        -- Auto completion
        use {"hrsh7th/nvim-compe"}
        -- Auto close tags
        use {"windwp/nvim-autopairs"}
        -- LSP completion items
        use {"onsails/lspkind-nvim"}
        -- File finder
        use {"nvim-telescope/telescope.nvim"}
        use {"nvim-telescope/telescope-media-files.nvim"}
        use {"nvim-lua/popup.nvim"}
		-- Commenter
		use {"terrortylor/nvim-comment"}
		-- Start Screen
		use {"mhinz/vim-startify"}
    end
)
