-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   lualine.lua                                        :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/07/29 22:43:44 by mmichele          #+#    #+#             --
--   Updated: 2025/07/29 22:49:59 by mmichele         ###   ########.fr       --
--                                                                            --
-- -------------------------------------------------------------------------- --

require('lualine').setup {
 	options = {
		theme = {
			normal = {
				a = 'NormalA',
				b = 'NormalB',
				c = 'NormalC',
				x = 'NormalX',
				y = 'NormalY',
				z = 'NormalZ',
	  		},
			insert = {
				a = 'InsertA',
				b = 'InsertB',
				c = 'InsertC',
				x = 'InsertX',
				y = 'InsertY',
				z = 'InsertZ',
			},
			visual = {
				a = 'VisualA',
				b = 'VisualB',
				c = 'VisualC',
				x = 'VisualX',
				y = 'VisualY',
				z = 'VisualZ',
			}
		}
  	}
}
