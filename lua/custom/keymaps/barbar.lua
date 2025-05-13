require 'globals'
map('n', '<Tab>', '<Cmd> BufferNext <CR>', create_desc 'Next buffer')
map('n', '<S-Tab>', '<Cmd> BufferPrevious <CR>', create_desc 'Previous buffer')
map('n', '<leader>x', '<Cmd> BufferClose <CR>', create_desc 'Close buffer')
map('n', '<A-S-J>', '<Cmd> BufferMovePrevious <CR>', create_desc 'Move buffer left')
map('n', '<A-S-K>', '<Cmd> BufferMoveNext <CR>', create_desc 'Move buffer right')
