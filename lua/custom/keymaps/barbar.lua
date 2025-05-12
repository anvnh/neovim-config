require 'globals'
map('n', '<Tab>', '<Cmd> BufferNext <CR>', { noremap = true, silent = true })
map('n', '<S-Tab>', '<Cmd> BufferPrevious <CR>', { noremap = true, silent = true })
map('n', '<leader>x', '<Cmd> BufferClose <CR>', { noremap = true, silent = true })
