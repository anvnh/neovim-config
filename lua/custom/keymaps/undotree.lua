require 'globals'

map('n', '<leader>ut', '<cmd> :UndotreeToggle <CR>', create_desc '[U]ndo [T]ree')
map('n', '<leader>uc', '<cmd> :UndotreeHide <CR>', create_desc '[U]ndo [C]lose')
vim.api.nvim_create_autocmd('User', {
  pattern = 'UndotreeHide',
  callback = function()
    vim.cmd 'wincmd c'
  end,
})
