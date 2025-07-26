require('neo-tree').setup({
	window = {
		width = "30"
	},
	filesystem = {
		filtered_items = {
			visible = true,				-- show hidden files
			hide_dotfiles = false,		-- show dotfiles (e.g., .git, .env)
			hide_gitignored = false		-- show files ignored by .gitignore
		}
	}
})

vim.keymap.set("n", "<C-t>", ":Neotree toggle<CR>")

