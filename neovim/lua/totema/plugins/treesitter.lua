-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   treesitter.lua                                     :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/07/29 22:49:12 by mmichele          #+#    #+#             --
--   Updated: 2025/07/29 22:49:47 by mmichele         ###   ########.fr       --
--                                                                            --
-- -------------------------------------------------------------------------- --

require('nvim-treesitter.configs').setup({
	ensure_installed = { "c", "cpp", "python", "make", "bash" },
	highlight = {
		enable = true,
	}
})
