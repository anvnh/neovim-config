return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        -- numbers = '',
        separator_style = 'slope',
        middle_mouse_command = 'bdelete! %d',
        -- indicator = {
        --   style = 'icon',
        --   icon = '▎',
        -- },
        max_name_length = 20,
        tab_size = 15,
        diagnostics = 'nvim_lsp',
        show_buffer_close_icons = false,
        sort_by = 'insert_after_current',
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            highlight = 'Directory',
            text_align = 'center',
            separator = true,
          },
        },
      },
    }
  end,
}
