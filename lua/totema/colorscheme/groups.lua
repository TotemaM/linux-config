local M = {}

local colors = require("totema.colorscheme.palette")


-- ":hi" To see all the highlight tokens colors
-- ":Inspect" to fetch highlight group of the token under cursor.
M.setup = function()
	return {
		-- UI Groups
		Normal			= { fg = colors.green, bg = colors.black },
		LineNr			= { fg = colors.mid_green },
		CursorLineNr	= { fg = colors.green, bg = colors.black },
		CursorLine		= { bg = colors.black },
		Comment			= { fg = colors.mid_green, italic = true },
		Constant		= { fg = colors.green, bold = true },
		String			= { fg = colors.pink },
		Character		= { fg = colors.cyan },
		Function		= { fg = colors.blue },
		Type			= { fg = colors.yellow },
		Special			= { fg = colors.orange },
		StatusLine		= { fg = colors.green, bg = colors.low_green },
		Delimiter		= { fg = colors.green },
		Operator		= { fg = colors.green },
		Identifier		= { fg = colors.green },
		Keyword			= { fg = colors.purple },
		-- LSP / Treesitter
		["@variable"]		= { fg = colors.green },
		["@type.builtin"]	= { fg = colors.orange },
		["@string.escape"]	= { fg = colors.magenta },
		-- c
		["@number.c"]		= { fg = colors.magenta },
	}
end

return M
