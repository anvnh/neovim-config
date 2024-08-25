return {
    'zaldih/themery.nvim',
    config=function ()
        require("themery").setup({
            themes = {
                {
                    name = "Gruvbox dark",
                    colorscheme = "gruvbox",
                    before = [[
                      vim.opt.background = "dark"
                    ]],
                },
                {
                    name = "Gruvbox light",
                    colorscheme = "gruvbox",
                    before = [[
                      vim.opt.background = "light"
                    ]],
                },
                "tokyonight",
                "catppuccin-latte",
                "catppuccin-frappe",
                "catppuccin-macchiato",
                "catppuccin-mocha",
            },
            livePreview = true,
        })
    end
}
