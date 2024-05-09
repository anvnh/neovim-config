return {
    "ggandor/leap.nvim",
    config = function ()
        require('leap').setup({
            vim.keymap.set({'n', 'x', 'o'}, 'zj', '<Plug>(leap-forward)'),
            vim.keymap.set({'n', 'x', 'o'}, 'zk', '<Plug>(leap-backward)') 
        })
    end
}

