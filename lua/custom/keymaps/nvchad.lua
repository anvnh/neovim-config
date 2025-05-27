api_map('n', '<leader>x', ':lua require("nvchad.tabufline").close_buffer()<CR>', create_desc 'Close current buffer')
api_map('n', '<Tab>', ':lua require("nvchad.tabufline").next()<CR>', create_desc 'Next buffer')
api_map('n', '<S-Tab>', ':lua require("nvchad.tabufline").prev()<CR>', create_desc 'Previous buffer')
