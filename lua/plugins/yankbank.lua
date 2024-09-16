return {
    "ptdewey/yankbank-nvim",
    dependencies = "kkharji/sqlite.lua",
    config = function()
        require('yankbank').setup({
            max_entries = 20,
            sep = "------------------------------------------------------------------------",
            num_behavior = "jump",
            focus_gain_poll = true,
            keymaps = {
                paste = "<CR>", -- enter
            },
            registers = {
                yank_register = "+",
            },
        })
    end,
}
