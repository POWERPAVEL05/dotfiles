require"nvim-treesitter.configs".setup{
  ensure_installed = {"python","c","lua","vim"},
  sync_install = false,
  ignore_install = {""},
  highlight = {
    enable = true,
  },
  indent = {enable = true,disable ={""}},
}
