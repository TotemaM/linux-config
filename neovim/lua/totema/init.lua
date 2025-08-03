-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   init.lua                                           :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/08/03 23:15:47 by mmichele          #+#    #+#             --
--   Updated: 2025/08/03 23:25:42 by mmichele         ###   ########.fr       --
--                                                                            --
-- -------------------------------------------------------------------------- --

require("totema.settings")
require("totema.remap")
require("totema.packer")

require("totema.plugins.telescope")
require("totema.plugins.treesitter")
require("totema.plugins.lualine")
require("totema.plugins.neotree")
require("totema.plugins.ibl")
require("totema.plugins.virt-column")

require("totema.colorscheme").setup()
