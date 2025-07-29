-- -------------------------------------------------------------------------- --
--                                                                            --
--                                                        :::      ::::::::   --
--   remap.lua                                          :+:      :+:    :+:   --
--                                                    +:+ +:+         +:+     --
--   By: mmichele <mmichele@student.s19.be>         +#+  +:+       +#+        --
--                                                +#+#+#+#+#+   +#+           --
--   Created: 2025/07/29 22:38:10 by mmichele          #+#    #+#             --
--   Updated: 2025/07/29 23:30:55 by mmichele         ###   ########.fr       --
--                                                                            --
-- -------------------------------------------------------------------------- --

vim.g.mapleader = " "

-- Inspect token group under cursor
vim.keymap.set("n", "<C-i>", ":Inspect<CR>")
-- Save and close nvim
vim.keymap.set({"n", "i"}, "<C-q>", "<Esc>:wqa<CR>")
-- Save
vim.keymap.set({"n", "i"}, "<C-s>", "<Esc>:w<CR>")
