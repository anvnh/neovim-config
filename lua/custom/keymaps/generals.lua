require 'globals'

---{{{ Clear hightlight
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
---}}}

---{{{Warning
map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
---}}}

--{{{ Move focus window
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
---}}}

--{{{ Increment/decrement
map('n', '+', '<C-a>', opts)
map('n', '-', '<C-x>', opts)
---}}}

--{{{ Split window
map('n', 'ss', ':split<CR>', opts)
map('n', 'sv', ':vsplit<CR>', opts)
---}}}

--{{{Ctrl - C acts as escape
map('i', '<C-c>', '<ESC>', { noremap = true, silent = true })
---}}}

---{{{Exit terminal mode
api_map('t', '<C-x>', '<C-\\><C-N>', create_desc 'Exit terminal mode')
---}}}

---{{{ Window size
api_map('n', '<C-S-A-Down>', '<Cmd>resize +3<CR>', opts)
api_map('n', '<C-S-A-Up>', '<Cmd>resize -3<CR>', opts)
api_map('n', '<C-S-A-Left>', '<Cmd>vertical resize +5<CR>', opts)
api_map('n', '<C-S-A-Right>', '<Cmd>vertical resize -5<CR>', opts)
---}}}

---{{{ Goto definition
api_map('n', 'gpd', "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", create_desc 'Preview [D]efinition')
---}}}

---{{{ Comment
api_map('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', create_desc 'Comment line')
api_map('v', '<leader>/', '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', create_desc 'Comment selection')
---}}}

---{{{ Line number
api_map('n', '<leader>nu', '<cmd>set nu!<CR>', create_desc 'Toggle line number')
api_map('n', '<leader>rnu', '<cmd>set rnu!<CR>', create_desc 'Toggle relative line number')
---}}}

--{{{ LSP Code action
map('n', '<leader>ca', function()
  vim.lsp.buf.code_action()
end, { desc = 'Code action' })
--}}}
