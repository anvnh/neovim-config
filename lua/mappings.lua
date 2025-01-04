local opts = { noremap = true, silent = true }

local function create_desc(desc) -- Create a new opts table with a description
  return vim.tbl_extend('force', opts, { desc = desc })
end
local map = vim.keymap.set
local api_map = vim.api.nvim_set_keymap

-- Clear hightlight
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- escape terminal mode
vim.api.nvim_set_keymap('t', '<C-x>', '<C-\\><C-N>', create_desc 'Exit terminal mode')

-- Tab buffer
vim.api.nvim_set_keymap('n', '<Tab>', '<Cmd>BufferNext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>x', '<Cmd>BufferClose<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>q', '<Cmd>BufferCloseAllButCurrent<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>p', '<Cmd>BufferPin<CR>', {})
-- move buffer to the left/right
vim.api.nvim_set_keymap('n', '<leader>mr', '<Cmd>BufferMovePrevious<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>ml', '<Cmd>BufferMoveNext<CR>', {})

-- Window size
vim.api.nvim_set_keymap('n', '<C-S-A-K>', '<Cmd>resize +3<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-S-A-J>', '<Cmd>resize -3<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-S-A-H>', '<Cmd>vertical resize +5<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-S-A-L>', '<Cmd>vertical resize -5<CR>', opts)

api_map('n', 'gpd', "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", create_desc 'Preview [D]efinition')

-- Tmux mappings
api_map('n', '<C-h>', '<cmd> TmuxNavigateLeft <CR>', opts)
api_map('n', '<C-l>', '<cmd> TmuxNavigateLeft <CR>', opts)
api_map('n', '<C-k>', '<cmd> TmuxNavigateLeft <CR>', opts)
api_map('n', '<C-j>', '<cmd> TmuxNavigateLeft <CR>', opts)

-- Comment
api_map('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', create_desc 'Comment line')
api_map('v', '<leader>/', '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', create_desc 'Comment selection')

-- Tree
api_map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', create_desc 'Toggle tree [E]xplorer')
api_map('n', '<leader>r', '<cmd>NvimTreeRefresh<CR>', create_desc 'Refresh tree [R]oot')

-- Toggle line number
api_map('n', '<leader>n', '<cmd>set nu!<CR>', create_desc 'Toggle line number')
api_map('n', '<leader>rn', '<cmd>set rnu!<CR>', create_desc 'Toggle relative line number')

map('n', '<leader>lg', '<cmd>FloatermNew lazygit<CR>', create_desc 'Open [L]azy[G]it')

map('n', '<leader>tt', '<cmd> Themery <CR>', create_desc '[TT]hemery')

map('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
map('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
map('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
map('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Terminal
-- vim.api.nvim_set_keymap('n', '<leader>f', '<Cmd>lua require("nvterm.terminal").toggle("float")<CR>', {noremap = true, silent = true})
api_map('n', '<leader>h', '<Cmd>lua require("nvterm.terminal").toggle("horizontal")<CR>', create_desc 'Toggle [H]orizontal terminal')
api_map('n', '<leader>v', '<Cmd>lua require("nvterm.terminal").toggle("vertical")<CR>', create_desc 'Toggle [V]ertical terminal')

map('n', '<leader>td', '<cmd>TodoTelescope<CR>', create_desc '[T]o[D]o Explorer')
