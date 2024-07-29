--Load module configs
require("haupt.remaps")
require("haupt.packer")
require("haupt.treesitter")
require("haupt.nvim-tree")
require("haupt.lsp")
--Startup
vim.opt.termguicolors = true
require("bufferline").setup{}
--Theme
vim.cmd[[colorscheme onedark]]
--Linenumbering
vim.cmd[[set relativenumber]]
require('lualine').setup()

vim.cmd[[set tabstop=4]]
vim.cmd[[set expandtab]]
--print("haupt")
