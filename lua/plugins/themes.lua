return {
    {
        "catppuccin/nvim", name = "catppuccin",
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy= true,
        config=function ()
            vim.cmd.colorscheme "gruvbox"
            vim.cmd [[
            ]]
        end
    }
}
