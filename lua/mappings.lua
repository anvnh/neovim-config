local opts = { noremap = true, silent = true }

local function create_desc(desc) -- Create a new opts table with a description
  return vim.tbl_extend('force', opts, { desc = desc })
end
local map = vim.keymap.set
local api_map = vim.api.nvim_set_keymap

-- <leader>l to load the lazy plugin manager
-- map('n', '<leader>l', '<cmd>Lazy<CR>', create_desc 'Load [L]azy plugin manager')

-- Clear hightlight
map('n', '<Esc>', '<cmd>nohlsearch<CR>')
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Increment/decrement
map('n', '+', '<C-a>', opts)
map('n', '-', '<C-x>', opts)

-- Split window
map('n', 'ss', ':split<CR>', opts)
map('n', 'sv', ':vsplit<CR>', opts)

-- Ctrl - C acts as escape
map('i', '<C-c>', '<ESC>', { noremap = true, silent = true })

-- Exit terminal mode
api_map('t', '<C-x>', '<C-\\><C-N>', create_desc 'Exit terminal mode')

-- Tab buffer
map('n', '<Tab>', ':lua require("nvchad.tabufline").next() <CR>', { noremap = true, silent = true })
map('n', '<S-Tab>', ':lua require("nvchad.tabufline").prev() <CR>', { noremap = true, silent = true })
map('n', '<leader>x', ':lua require("nvchad.tabufline").close_buffer() <CR>', { noremap = true, silent = true })
-- -- closes all buffers
-- require("nvchad.tabufline").closeAllBufs(true)
-- require("nvchad.tabufline").closeAllBufs(false) -- excludes current buf
-- require("nvchad.tabufline").closeBufs_at_direction("left") -- or right

-- Window size
api_map('n', '<C-S-A-Down>', '<Cmd>resize +3<CR>', opts)
api_map('n', '<C-S-A-Up>', '<Cmd>resize -3<CR>', opts)
api_map('n', '<C-S-A-Left>', '<Cmd>vertical resize +5<CR>', opts)
api_map('n', '<C-S-A-Right>', '<Cmd>vertical resize -5<CR>', opts)

-- Rename
map('n', '<leader>rn', ':IncRename ')

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
api_map('n', '<leader>nu', '<cmd>set nu!<CR>', create_desc 'Toggle line number')
api_map('n', '<leader>rnu', '<cmd>set rnu!<CR>', create_desc 'Toggle relative line number')

-- MOVE
-- Normal-mode commands
map('n', '<A-j>', ':MoveLine(1)<CR>', opts)
map('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
map('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
map('n', '<A-l>', ':MoveHChar(1)<CR>', opts)
map('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
map('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)

-- Visual-mode commands
map('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
map('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
map('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
map('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)

map('n', '<leader>lg', '<cmd>FloatermNew lazygit<CR>', create_desc 'Open [L]azy[G]it')

-- map('n', '<leader>tt', '<cmd> Themery <CR>', create_desc '[TT]hemery')
map('n', '<leader>tt', '<cmd> lua require("nvchad.themes").open( { border = false, style = "flat" } ) <CR>', create_desc '[TT]hemery')

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

--  ____  _   _  ___  ____ _____ ____ _   _ _____
-- / ___|| | | |/ _ \|  _ \_   _/ ___| | | |_   _|
-- \___ \| |_| | | | | |_) || || |   | | | | | |
--  ___) |  _  | |_| |  _ < | || |___| |_| | | |
-- |____/|_| |_|\___/|_| \_\|_| \____|\___/  |_|
api_map('n', '<F1>', '<cmd>:w | :!g++ -std=c++17 % && ./a.out<cr>', { noremap = true, silent = true, desc = 'Compile and run C++ file' })

-- vim.api.nvim_set_keymap('n', '<C-S-A->', '<Cmd>resize +3<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<C-S-A-m>', '<Cmd>resize -3<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<C-S-A-H>', '<Cmd>vertical resize +5<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<C-S-A-L>', '<Cmd>vertical resize -5<CR>', opts)

--  __  __            _       _
-- |  \/  | __ _ _ __| | ____| | _____      ___ __
-- | |\/| |/ _` | '__| |/ / _` |/ _ \ \ /\ / / '_ \
-- | |  | | (_| | |  |   < (_| | (_) \ V  V /| | | |
-- |_|  |_|\__,_|_|  |_|\_\__,_|\___/ \_/\_/ |_| |_|
map('n', '<leader>pv', '<cmd>:Markview splitToggle<CR>', create_desc 'Toggle [P]review [V]iew')

-- Code runner
map('n', '<leader>rr', ':RunCode<CR>', { noremap = true, silent = false })
map('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
map('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
map('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
map('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
map('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
map('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

-- Copilot
map('n', '<leader>cc', '<cmd> :CopilotChatOpen <CR>', create_desc '[C]opilot [C]hat')
map('n', '<leader>cm', '<cmd> :CopilotChatModels<CR>', create_desc '[C]opilot [M]odels')

-- Flutter
map('n', '<leader>fr', '<cmd> :FlutterRun <CR>', create_desc '[F]lutter [R]un')
map('n', '<leader>fd', '<cmd> :FlutterDevices <CR>', create_desc '[F]lutter [R]un')
