return {
  -- {
  --   'folke/tokyonight.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd.colorscheme 'tokyonight'
  --   end,
  -- },
  -- {
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   config = function()
  --     vim.cmd.colorscheme 'catppuccin'
  --   end,
  -- },
  {
    'ellisonleao/gruvbox.nvim',
    lazy = true,
    config = function()
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
}
