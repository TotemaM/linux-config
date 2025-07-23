-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8', -- or <branch = '0.1.x'>
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- 42 Header
	use {
		"Diogo-ss/42-header.nvim",
		cmd = { "Stdheader" },
		config = function()
			require("42header").setup {
				auto_update = true,
				default_map = true
			}
		end,
	}
end)
