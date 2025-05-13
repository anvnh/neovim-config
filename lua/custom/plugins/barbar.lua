return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
  config = function()
    require('barbar').setup {
      sidebar_filetypes = {
        NvimTree = {
          is_sidebar = true,
          text = 'File Explorer',
          align = 'center',
        },
        undotree = {
          text = 'Undotree',
          align = 'center',
        },
      },
    }
  end,
}
