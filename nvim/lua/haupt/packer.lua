-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
--Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
--Treesitter
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
  }

  use {
          'nvim-tree/nvim-tree.lua',
	   requires = {
		'nvim-tree/nvim-web-devicons', -- optional
	   },
  }

  use {
	  'akinsho/bufferline.nvim',
	   tag = "*",
	   requires = {
			'nvim-tree/nvim-web-devicons',
		}
  }
  use{
	'goolord/alpha-nvim',
		requires ={
			'nvim-lua/plenary.nvim',
		},

  }

  use {
    	'nvim-lualine/lualine.nvim',
 	 requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
	--use 'iitchyny/lightline.vim'
--Palenight-Theme
  use 'wilmanbarrios/palenight.nvim'

  use "joshdick/onedark.vim"
end)
