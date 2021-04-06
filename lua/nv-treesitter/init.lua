local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
    ensure_installed = {
        "javascript",
        "html",
        "css",
        "bash",
        "cpp",
        "rust",
        "lua",
		"python",
		"graphql"
    },
	autotag = {enable = true},
    highlight = {
        enable = true,
        use_languagetree = true
    }
}
