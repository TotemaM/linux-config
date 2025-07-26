require('nvim-treesitter.configs').setup({
	ensure_installed = { "c", "cpp", "python", "make", "bash" },
	highlight = {
		enable = true,
	}
})

require('nvim-treesitter.configs').setup({
	highlight = {
		enable = true,
	},
	playground = {
		enable = true,
		updatetime = 25,
		persist_queries = false,
	},
})

