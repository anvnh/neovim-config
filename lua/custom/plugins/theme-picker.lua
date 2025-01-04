return {
  'zaldih/themery.nvim',
  config = function()
    require('themery').setup {
      themes = {
        {
          name = 'Gruvbox dark',
          colorscheme = 'gruvbox',
        },
        'catppuccin-frappe',
        'catppuccin-macchiato',
        'catppuccin-mocha',
        'tokyonight',
      },
      livePreview = true,
    }
  end,
}
