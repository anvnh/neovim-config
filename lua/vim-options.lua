local opt = vim.opt
local g = vim.g

-- basic config
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.number = true
opt.relativenumber = true
opt.autoindent = true
opt.smartindent = true
opt.cursorline = true
opt.wrap = false
opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"
opt.ruler = false
opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true
opt.whichwrap:append "<>[]hl"

g.mapleader = " "

g.terminal_font = "Monospace 11"

--nvim-tree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.termguicolors = true




-- auto reload
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})



