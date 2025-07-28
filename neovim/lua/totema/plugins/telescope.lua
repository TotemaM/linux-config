local builtin = require('telescope.builtin')

require('telescope').setup{
	defaults = {
		layout_strategy = 'flex', -- Automatically switches between horizontal/vertical
		layout_config = {
			flex = {
				flip_columns = 120, -- Switch to vertical if window is narrower than 120 columns
			},
			horizontal = {
				preview_width = 0.6,
			},
			vertical = {
				preview_height = 0.7,
			},
		},
	}
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope grep files' })
