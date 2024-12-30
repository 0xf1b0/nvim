require('nvim-treesitter.configs').setup {
  ensure_installed = { 'lua', 'json', 'solidity', 'python' },
  auto_install = true,
  highlight = { enable = true }
}
