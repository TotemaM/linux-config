-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   init.lua                                           :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/07/29 22:37:53 by mmichele          #+#    #+#             --
--   Updated: 2025/07/29 22:49:55 by mmichele         ###   ########.fr       --
--                                                                            --
-- -------------------------------------------------------------------------- --

require("totema.settings")
require("totema.remap")
require("totema.packer")

require("totema.plugins.telescope")
require("totema.plugins.treesitter")
require("totema.plugins.lualine")
require("totema.plugins.neotree")

require("totema.colorscheme").setup()
