return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {noremap = true, silent = true, desc="Find files"})
            vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {noremap = true, silent = true, desc="Recently opened files"})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {noremap = true, silent = true, desc="Grep files"})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {noremap = true, silent = true, desc="List buffers"})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {noremap = true, silent = true, desc="Help tags"})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup ({
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                  }
                }
              }
            })
            require("telescope").load_extension("ui-select")
        end
    },
}
