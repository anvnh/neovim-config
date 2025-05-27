return {
  'ya2s/nvim-cursorline',
  event = 'VeryLazy',
  config = function()
    require('nvim-cursorline').setup {
      cursorline = {
        enable = true,
        timeout = 500,
        number = false,
        virtual_text = false,
      },
      cursorword = {
        enable = true,
        timeout = 1000,
        -- min_length = 3,
        hl = { underline = true },
      },
    }
  end,
}
