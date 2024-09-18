local opts = { noremap = true, silent = true }

--  ____    _    ____ ___ ____ 
-- | __ )  / \  / ___|_ _/ ___|
-- |  _ \ / _ \ \___ \| | |    
-- | |_) / ___ \ ___) | | |___ 
-- |____/_/   \_\____/___\____|
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { desc = "Window left" })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { desc = "Window right" })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { desc = "Window down" })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { desc = "Window up" })

vim.api.nvim_set_keymap('n', '<space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', {})
vim.api.nvim_set_keymap('n', '<space>bd', '<Cmd>BufferOrderByDirectory<CR>', {})
vim.api.nvim_set_keymap('n', '<space>bl', '<Cmd>BufferOrderByLanguage<CR>', {})
vim.api.nvim_set_keymap('n', '<space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', {})

-- clear highlight
vim.api.nvim_set_keymap('n', '<Esc>', '<Cmd>noh<CR>', opts)

--  _____  _    ____    ____  _   _ _____ _____ _____ ____  
-- |_   _|/ \  | __ )  | __ )| | | |  ___|  ___| ____|  _ \ 
--   | | / _ \ |  _ \  |  _ \| | | | |_  | |_  |  _| | |_) |
--   | |/ ___ \| |_) | | |_) | |_| |  _| |  _| | |___|  _ < 
--   |_/_/   \_\____/  |____/ \___/|_|   |_|   |_____|_| \_\
vim.api.nvim_set_keymap('n', '<Tab>', '<Cmd>BufferNext<CR>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>x', '<Cmd>BufferClose<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>q', '<Cmd>BufferCloseAllButCurrent<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>p', '<Cmd>BufferPin<CR>', {})
-- move buffer to the left/right
vim.api.nvim_set_keymap('n', '<leader>mr', '<Cmd>BufferMovePrevious<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>ml', '<Cmd>BufferMoveNext<CR>', {})

-- increase/decrease window size
vim.api.nvim_set_keymap('n', '<C-Up>', '<Cmd>resize +2<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Down>', '<Cmd>resize -2<CR>', opts)

vim.api.nvim_set_keymap('n', '<C-Right>', '<Cmd>vertical resize +5<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-Left>', '<Cmd>vertical resize -5<CR>', opts)

-- terminal
-- vim.api.nvim_set_keymap('n', '<leader>f', '<Cmd>lua require("nvterm.terminal").toggle("float")<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>h', '<Cmd>lua require("nvterm.terminal").toggle("horizontal")<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>v', '<Cmd>lua require("nvterm.terminal").toggle("vertical")<CR>', opts)

-- escape terminal mode
vim.api.nvim_set_keymap('t', '<C-x>', '<C-\\><C-N>', { noremap = true, silent = true, desc="Exit terminal mode" })

--  ____  _   _  ___  ____ _____ ____ _   _ _____
-- / ___|| | | |/ _ \|  _ \_   _/ ___| | | |_   _|
-- \___ \| |_| | | | | |_) || || |   | | | | | |
--  ___) |  _  | |_| |  _ < | || |___| |_| | | |
-- |____/|_| |_|\___/|_| \_\|_| \____|\___/  |_|
vim.api.nvim_set_keymap('n', '<F1>', '<cmd>:w | :!g++ -std=c++17 % && ./a.out<cr>', { noremap = true, silent = true, desc="Compile and run C++ file" })

--   ____ ___  ____  _____   ____  _   _ _   _ _   _ _____ ____
--  / ___/ _ \|  _ \| ____| |  _ \| | | | \ | | \ | | ____|  _ \
-- | |  | | | | | | |  _|   | |_) | | | |  \| |  \| |  _| | |_) |
-- | |__| |_| | |_| | |___  |  _ <| |_| | |\  | |\  | |___|  _ <
--  \____\___/|____/|_____| |_| \_\\___/|_| \_|_| \_|_____|_| \_\
vim.keymap.set('n', '<F2>', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

-- goto definition
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {noremap = true, silent = true, desc = "Show hover"})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {noremap = true, silent = true, desc = "Goto definition"})
vim.keymap.set('n', '<C-LeftMouse>', vim.lsp.buf.definition, { noremap = true, silent = true, desc="Goto definition" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})

vim.api.nvim_set_keymap('n', 'gpd', '<cmd>lua require(\'goto-preview\').goto_preview_definition()<CR>', { noremap = true, silent = true, desc="Preview Definition"})
-- vim.api.nvim_set_keymap('n', 'gpt', '<cmd>lua require(\'goto-preview\').goto_preview_type_definition()<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'gpi', '<cmd>lua require(\'goto-preview\').goto_preview_implementation()<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'gpD', '<cmd>lua require(\'goto-preview\').goto_preview_declaration()<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'gP', '<cmd>lua require(\'goto-preview\').close_all_win()<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'gpr', '<cmd>lua require(\'goto-preview\').goto_preview_references()<CR>', { noremap = true })

-- comment
vim.api.nvim_set_keymap('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>',
    { noremap = true, silent = true, desc="Comment line" })
vim.api.nvim_set_keymap('v', '<leader>/', '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
    { noremap = true, silent = true, desc="Comment selection lines" })

-- tmux mappings
vim.api.nvim_set_keymap('n', '<C-h>', '<cmd> TmuxNavigateLeft <CR>', opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd> TmuxNavigateLeft <CR>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd> TmuxNavigateLeft <CR>', opts)
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd> TmuxNavigateLeft <CR>', opts)

-- nvim-tree
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true, desc="Toggle tree" })
vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>NvimTreeRefresh<CR>', { noremap = true, silent = true, desc="Refresh tree" })
-- vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>NvimTreeFindFile<CR>', {noremap = true, silent = true})

-- moving window
vim.api.nvim_set_keymap('n', '<A-l>', '<C-w>L', opts)
vim.api.nvim_set_keymap('n', '<A-h>', '<C-w>H', opts)
vim.api.nvim_set_keymap('n', '<A-j>', '<C-w>J', opts)
vim.api.nvim_set_keymap('n', '<A-k>', '<C-w>K', opts)
vim.api.nvim_set_keymap('n', '<A-t>', '<C-w>T', opts)

-- color picker
vim.api.nvim_set_keymap('n', '<leader>cp', '<cmd> PickColor <CR>', { noremap = true, silent = true, desc="Pick color" })

-- toggle line number
vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>set nu!<CR>', { noremap = true, silent = true, desc="Toggle line number"})
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>set rnu!<CR>', { noremap = true, silent = true, desc="Toggle relative line number"})

-- formatting
vim.api.nvim_set_keymap("n", "<leader>fm", "<cmd>lua vim.lsp.buf.format({opt= {tabStop=4}})<CR>", {noremap = true, silent = true, desc="Format"})

--   ____ ___  __  __ ____ ___ _     _____ ____  
--  / ___/ _ \|  \/  |  _ \_ _| |   | ____|  _ \ 
-- | |  | | | | |\/| | |_) | || |   |  _| | |_) |
-- | |__| |_| | |  | |  __/| || |___| |___|  _ < 
--  \____\___/|_|  |_|_|  |___|_____|_____|_| \_\

-- Open compiler
vim.api.nvim_set_keymap('n', '<F6>', "<cmd>CompilerOpen<cr>", opts)
-- Redo last selected option
vim.api.nvim_set_keymap('n', '<S-F6>', "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>", opts)
-- Toggle compiler results
vim.api.nvim_set_keymap('n', '<S-F7>', "<cmd>CompilerToggleResults<cr>", opts)

-- __     _____ __  __   __  __  _____     _______ 
-- \ \   / /_ _|  \/  | |  \/  |/ _ \ \   / / ____|
--  \ \ / / | || |\/| | | |\/| | | | \ \ / /|  _|  
--   \ V /  | || |  | | | |  | | |_| |\ V / | |___ 
--    \_/  |___|_|  |_| |_|  |_|\___/  \_/  |_____|

-- Normal-mode commands
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', opts)
vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)

--  _____ _   _ _____ __  __ _____
-- |_   _| | | | ____|  \/  | ____|
--   | | | |_| |  _| | |\/| |  _|
--   | | |  _  | |___| |  | | |___
--   |_| |_| |_|_____|_|  |_|_____|
--  ______        _____ _____ ____ _   _ ___ _   _  ____
-- / ___\ \      / /_ _|_   _/ ___| | | |_ _| \ | |/ ___|
-- \___ \\ \ /\ / / | |  | || |   | |_| || ||  \| | |  _
--  ___) |\ V  V /  | |  | || |___|  _  || || |\  | |_| |
-- |____/  \_/\_/  |___| |_| \____|_| |_|___|_| \_|\____|
vim.keymap.set('n', '<leader>tt', '<cmd> Themery <CR>', { noremap = true, silent = true, desc="Toggle theme" })

-- __   __ _    _   _ _  __  ____    _    _   _ _  __
-- \ \ / // \  | \ | | |/ / | __ )  / \  | \ | | |/ /
--  \ V // _ \ |  \| | ' /  |  _ \ / _ \ |  \| | ' /
--   | |/ ___ \| |\  | . \  | |_) / ___ \| |\  | . \
--   |_/_/   \_\_| \_|_|\_\ |____/_/   \_\_| \_|_|\_\

vim.keymap.set("n", "<leader>y", "<cmd>YankBank<CR>", { noremap = true })
