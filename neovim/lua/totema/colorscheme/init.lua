-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   init.lua                                           :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/07/29 22:37:35 by mmichele          #+#    #+#             --
--   Updated: 2025/07/29 22:50:06 by mmichele         ###   ########.fr       --
--                                                                            --
-- -------------------------------------------------------------------------- --

local M = {}

M.setup = function()
  local groups = require("totema.colorscheme.groups").setup()
  for group, setting in pairs(groups) do
	vim.api.nvim_set_hl(0, group, setting)
  end
end

return M
