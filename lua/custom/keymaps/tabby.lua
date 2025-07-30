require 'globals'

api_map('n', '<leader>tn', ':$tabnew<CR>', create_desc 'New Tab')
api_map('n', '<leader>tc', ':tabclose<CR>', create_desc 'Close Tab')
api_map('n', '<leader>to', ':tabonly<CR>', create_desc 'Close Other Tabs')
api_map('n', '<Tab>', ':tabn<CR>', create_desc 'Next Tab')
api_map('n', '<S-Tab>', ':tabp<CR>', create_desc 'Previous Tab')
-- move current tab to previous position
api_map('n', '<leader>tmp', ':-tabmove<CR>', { noremap = true, desc = 'Move Tab Previous' })
-- move current tab to next position
api_map('n', '<leader>tmn', ':+tabmove<CR>', { noremap = true, desc = 'Move Tab Next' })
