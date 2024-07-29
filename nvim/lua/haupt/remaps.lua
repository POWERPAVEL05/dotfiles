----REMAPS----

vim.g.mapleader = " "
--Quit all
vim.api.nvim_set_keymap('n','<leader>qq',':wa<CR>:qa<CR>',{noremap = true})
vim.api.nvim_set_keymap('n','<leader>qf',':qa!<CR>',{noremap = true})

--Save
vim.api.nvim_set_keymap('n','<C-s>',':w<CR>',{noremap = true})

--Move between windows
vim.api.nvim_set_keymap('n','<C-h>','<C-w>h',{noremap = true})
vim.api.nvim_set_keymap('n','<C-l>','<C-w>l',{noremap = true})
vim.api.nvim_set_keymap('n','<C-j>','<C-w>j',{noremap = true})
vim.api.nvim_set_keymap('n','<C-k>','<C-w>k',{noremap = true})

--Split screen verticaly
vim.api.nvim_set_keymap('n','<leader>wd',':vsp<CR>',{noremap= true})

--Bufferline 

vim.api.nvim_set_keymap('n','H',':bprevious<CR>',{})
vim.api.nvim_set_keymap('n','L',':bnext<CR>',{})

--Lazygit

vim.api.nvim_set_keymap('n','<leader>gg',':FloatermNew --height=0.9 --width=0.9 lazygit<CR>',{})
--vim.keymap.set("n","<leader>ee",vim.cmd.Ex)

