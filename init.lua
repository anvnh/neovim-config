local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

if vim.fn.has('unix') == 1 and vim.fn.has('mac') == 0 and vim.fn.has('win32') == 0 then
    vim.opt.clipboard = 'unnamedplus' -- Use system clipboard for unnamed register
end

if vim.fn.has('unix') == 1 and vim.fn.has('mac') == 0 and vim.fn.has('win32') == 0 and vim.fn.executable('wl-copy') == 1 then
    vim.opt.clipboard = 'unnamedplus' -- Use system clipboard for unnamed register

    -- Automatically copy to system clipboard when you exit insert mode
    vim.api.nvim_create_autocmd("InsertLeave", {
        callback = function()
            vim.fn.system('wl-copy', vim.fn.getreg('"'))
        end,
    })

    -- Automatically paste from system clipboard when you enter insert mode
    vim.api.nvim_create_autocmd("InsertEnter", {
        callback = function()
            vim.fn.setreg('"', vim.fn.system('wl-paste'))
        end,
    })
end

vim.opt.rtp:prepend(lazypath)

-- local gdproject = io.open(vim.fn.getcwd()..'/project.godot', 'r')
-- if gdproject then
--     io.close(gdproject)
--     vim.fn.serverstart './godothost'
-- end

-- local opts = {}

require("vim-options")
require("mappings")
require("lazy").setup("plugins")


local port = os.getenv('GDScript_Port') or '6005'
local cmd = vim.lsp.rpc.connect('127.0.0.1', port)
local pipe = '/tmp/godot.pipe' -- I use /tmp/godot.pipe

vim.lsp.start({
    name = 'Godot',
    cmd = cmd,
    root_dir = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, { upward = true })[1]),
    on_attach = function(client, bufnr)
        vim.api.nvim_command('echo serverstart("' .. pipe .. '")')
    end
})


