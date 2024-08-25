return {
    {
        "catppuccin/nvim", name = "catppuccin",
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy= true,
        config=function ()
            vim.cmd.colorscheme "tokyonight"
        end
    },
    {
        "morhetz/gruvbox",
        lazy= true,
        config=function ()
            vim.cmd.colorscheme "gruvbox"
            vim.cmd [[
            ]]
        end
    }
}
