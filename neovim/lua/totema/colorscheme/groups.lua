-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   groups.lua                                         :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/08/03 23:16:11 by mmichele          #+#    #+#             --
--   Updated: 2025/08/03 23:46:51 by mmichele         ###   ########.fr       --
--                                                                            --
-- -------------------------------------------------------------------------- --

local M = {}

local colors = require("totema.colorscheme.palette")

-- ":hi" To see all the highlight tokens colors
-- ":Inspect" to fetch highlight group of the token under cursor.
M.setup = function()
	return {
		-- Default neovim groups
		Normal				= { fg = colors.green, bg = colors.black },
		LineNr				= { fg = colors.mid_green },
		CursorLineNr		= { fg = colors.green, bg = colors.black },
		CursorLine			= { bg = colors.black },
		Comment				= { fg = colors.mid_green, italic = true },
		Constant			= { fg = colors.green, bold = true },
		String				= { fg = colors.pink },
		Character			= { fg = colors.cyan },
		Function			= { fg = colors.blue },
		Type				= { fg = colors.yellow },
		Special				= { fg = colors.orange },
		Delimiter			= { fg = colors.green },
		Operator			= { fg = colors.green },
		Identifier			= { fg = colors.green },
		Keyword				= { fg = colors.purple },
		MsgArea				= { fg = colors.green, bg = colors.black },
		StatusLineNC		= { bg = colors.black },
		-- :Ex
		Directory			= { fg = colors.green },
		-- Neotree
		NeoTreeDimText		= { fg = colors.green },
		NeoTreeGitModified	= { fg = colors.orange },
		-- Lualine
		StatusLine			= { fg = colors.black, bg = colors.black },
		-- Normal
		NormalA				= { fg = colors.black, bg = colors.orange },
		NormalB				= { fg = colors.black, bg = colors.mid_orange },
		NormalC				= { fg = colors.orange },
		NormalX				= { fg = colors.orange },
		NormalY				= { fg = colors.black, bg = colors.mid_orange },
		NormalZ				= { fg = colors.black, bg = colors.orange },
		-- Insert
		InsertA				= { fg = colors.black, bg = colors.green },
		InsertB				= { fg = colors.black, bg = colors.mid_green },
		InsertC				= { fg = colors.green },
		InsertX				= { fg = colors.green },
		InsertY				= { fg = colors.black, bg = colors.mid_green },
		InsertZ				= { fg = colors.black, bg = colors.green },
		-- Visual
		VisualA				= { fg = colors.black, bg = colors.purple },
		VisualB				= { fg = colors.black, bg = colors.mid_purple },
		VisualC				= { fg = colors.purple },
		VisualX				= { fg = colors.purple },
		VisualY				= { fg = colors.black, bg = colors.mid_purple },
		VisualZ				= { fg = colors.black, bg = colors.purple },
		-- Treesitter
		["@variable"]		= { fg = colors.green },
		["@type.builtin"]	= { fg = colors.orange },
		["@string.escape"]	= { fg = colors.magenta },
		-- c
		["@number.c"]		= { fg = colors.magenta },
	}
end

return M
