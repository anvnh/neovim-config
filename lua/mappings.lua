-- basic
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { desc = "Window left" })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { desc = "Window right" })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { desc = "Window down" })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { desc = "Window up" })

vim.api.nvim_set_keymap('n', '<space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', {})
vim.api.nvim_set_keymap('n', '<space>bd', '<Cmd>BufferOrderByDirectory<CR>', {}) 
vim.api.nvim_set_keymap('n', '<space>bl', '<Cmd>BufferOrderByLanguage<CR>', {})
vim.api.nvim_set_keymap('n', '<space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', {})

-- clear highlight
vim.api.nvim_set_keymap('n', '<Esc>', '<Cmd>noh<CR>', {noremap = true, silent = true})

-- tab buffer
vim.api.nvim_set_keymap('n', '<Tab>', '<Cmd>BufferNext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>x', '<Cmd>BufferClose<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>q', '<Cmd>BufferCloseAllButCurrent<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>p', '<Cmd>BufferPin<CR>', {})

-- close window
-- vim.api.nvim_set_keymap('n', '<leader>x', ':close<CR>', {noremap = true, silent = true})

-- increase/decrease window size
vim.api.nvim_set_keymap('n', '<C-Up>', '<Cmd>resize +2<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', '<Cmd>resize -2<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-Right>', '<Cmd>vertical resize +5<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>', '<Cmd>vertical resize -5<CR>', {noremap = true, silent = true})

-- terminal
-- vim.api.nvim_set_keymap('n', '<leader>f', '<Cmd>lua require("nvterm.terminal").toggle("float")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', '<Cmd>lua require("nvterm.terminal").toggle("horizontal")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>v', '<Cmd>lua require("nvterm.terminal").toggle("vertical")<CR>', {noremap = true, silent = true})

-- escape terminal mode
vim.api.nvim_set_keymap('t', '<C-x>', '<C-\\><C-N>', {noremap = true, silent = true})

-- run files
vim.api.nvim_set_keymap('n', '<F2>', '<cmd>:w | :!g++ % && ./a.out<cr>', {noremap = true, silent = true})

-- goto definition
vim.api.nvim_set_keymap('n', 'gpd', '<cmd>lua require(\'goto-preview\').goto_preview_definition()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'gpt', '<cmd>lua require(\'goto-preview\').goto_preview_type_definition()<CR>', {noremap = true}) 
vim.api.nvim_set_keymap('n', 'gpi', '<cmd>lua require(\'goto-preview\').goto_preview_implementation()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'gpD', '<cmd>lua require(\'goto-preview\').goto_preview_declaration()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'gP', '<cmd>lua require(\'goto-preview\').close_all_win()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'gpr', '<cmd>lua require(\'goto-preview\').goto_preview_references()<CR>', {noremap = true})

-- comment
vim.api.nvim_set_keymap('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', {noremap = true})
vim.api.nvim_set_keymap('v', '<leader>/', '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', {noremap = true})

-- tmux mappings
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd> TmuxNavigateLeft <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd> TmuxNavigateLeft <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd> TmuxNavigateLeft <CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd> TmuxNavigateLeft <CR>', {noremap = true, silent = true})

-- nvim-tree
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>NvimTreeRefresh<CR>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>NvimTreeFindFile<CR>', {noremap = true, silent = true})

-- moving window
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>L', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>H', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>J', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>K', {noremap = true, silent = true})


