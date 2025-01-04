return {
  'declancm/cinnamon.nvim',
  version = '*', -- use latest release
  config = function()
    require('cinnamon').setup {
      -- Enable all provided keymaps
      keymaps = {
        basic = true,
        extra = false,
      },
      -- Only scroll the window
      options = {
        mode = 'cursor',
        delay = 5,
        max_delta = {
          line = false, -- Maximum distance for line movements before scroll animation is skipped
          column = false, -- Maximum distance for column movements before scroll animation is skipped
          time = 1000, -- Maximum duration for a movement (in ms)
        },
      },
      keys = {
        { '<c-d>', '<cmd>lua require("cinnamon").scroll("<C-d>zz")<cr>', mode = 'n' },
        { '<c-u>', '<cmd>lua require("cinnamon").scroll("<C-u>zz")<cr>', mode = 'n' },
        { '<c-f>', '<cmd>lua require("cinnamon").scroll("<C-f>zz")<cr>', mode = 'n' },
        { '<c-b>', '<cmd>lua require("cinnamon").scroll("<C-b>zz")<cr>', mode = 'n' },
        { 'zz', '<cmd>lua require("cinnamon").scroll("zz")<cr>', mode = 'n' },
        { 'zt', '<cmd>lua require("cinnamon").scroll("zt")<cr>', mode = 'n' },
        { 'zb', '<cmd>lua require("cinnamon").scroll("zb")<cr>', mode = 'n' },
        { 'gg', '<cmd>lua require("cinnamon").scroll("gg")<cr>', mode = 'n' },
        { 'G', '<cmd>lua require("cinnamon").scroll("G")<cr>', mode = 'n' },
      },
    }
  end,
}
