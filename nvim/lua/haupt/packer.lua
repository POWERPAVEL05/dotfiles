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
use {
        "OXY2DEV/markview.nvim",
         requires = {
                "nvim-treesitter/nvim-treesitter",
                "nvim-tree/nvim-web-devicons"
        }
}
  use {
    'goolord/alpha-nvim',
    requires = {
        'nvim-tree/nvim-web-devicons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
  use {
    	'nvim-lualine/lualine.nvim',
 	 requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'voldikss/vim-floaterm'

  use {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
  }
  use{
     "folke/todo-comments.nvim",
     dependencies = { "nvim-lua/plenary.nvim" },
  }
  use {
                'neoclide/coc.nvim',
                branch = "release"
  }
--Palenight-Theme
  use 'wilmanbarrios/palenight.nvim'

  use "joshdick/onedark.vim"
end)
