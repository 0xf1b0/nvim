local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fF', function()
  builtin.find_files({
    find_command = { 'rg', '--files', '--hidden', '--no-ignore', '--glob', '!**/.git/*' }
  })
end)

vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('v', '<leader>fg', function()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg('v')
  vim.fn.setreg('v', {})
  builtin.live_grep({ default_text = text })
end)
vim.keymap.set('n', '<leader>fG', function()
  builtin.live_grep({
    additional_args = { '--hidden', '--no-ignore', '--glob', '!**/.git/*' }
  })
end)
vim.keymap.set('v', '<leader>fG', function()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg('v')
  vim.fn.setreg('v', {})
  builtin.live_grep({
    default_text = text,
    additional_args = { '--hidden', '--no-ignore', '--glob', '!**/.git/*' }
  })
end)

vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
