require"nvim-treesitter.configs".setup {
  ensure_installed = "maintained",
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
  },
}