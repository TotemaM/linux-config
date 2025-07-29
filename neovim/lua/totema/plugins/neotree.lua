-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   neotree.lua                                        :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/07/29 23:00:04 by mmichele          #+#    #+#             --
--   Updated: 2025/07/29 23:00:12 by mmichele         ###   ########.fr       --
--                                                                            --
-- -------------------------------------------------------------------------- --

require('neo-tree').setup({
	window = {
		width = "30",
		mappings = {
			["<space>"] = false
		}
	},
	filesystem = {
		filtered_items = {
			visible = true,				-- show hidden files
			hide_dotfiles = false,		-- show dotfiles (e.g., .git, .env)
			hide_gitignored = false		-- show files ignored by .gitignore
		}
	},
	follow_current_file = true,
})

-- Function to calculate the width of the Neotree pane
local function set_neotree_width_to_content()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local buf = vim.api.nvim_win_get_buf(win)
		local bufname = vim.api.nvim_buf_get_name(buf)
		if bufname:match("neo%-tree filesystem") then
			local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
			local max_len = 30 -- minimum width
			for _, line in ipairs(lines) do
				local len = vim.fn.strdisplaywidth(line)
				if len > max_len then
					max_len = len
				end
			end
			vim.api.nvim_win_set_width(win, max_len + 2) -- add padding
			return
		end
	end
end

-- Function to check if Neo-tree is open
local function is_neotree_open()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(win))
		if bufname:match("neo%-tree filesystem") then
			return true
		end
	end
	return false
end

-- Toggle Neo-tree without focus, based on its state.
vim.keymap.set("", "<C-t>", function()
	if is_neotree_open() then
		vim.cmd("Neotree close")
	else
		set_neotree_width_to_content()
		vim.cmd("Neotree show")
		
	end
end)

-- Returns true if cursor is in the editor, false if in Neo-tree
local function is_cursor_in_editor()
	local bufname = vim.api.nvim_buf_get_name(0)
	local filetype = vim.bo.filetype
	-- Check for Neo-tree buffer by name or filetype
	if bufname:match("neo%-tree filesystem") or filetype == "neo-tree" then
		return false
	else
		return true
	end
end

-- Toggle Neo-tree focus.
vim.keymap.set("n", "<leader>t", function()
	if is_cursor_in_editor() then
		if is_neotree_open() then
			vim.cmd("wincmd h")
		else
			vim.cmd("Neotree toggle")
			set_neotree_width_to_content()
		end
	else
		vim.cmd("wincmd l")
	end
end)
