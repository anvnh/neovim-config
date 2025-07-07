-- Neovim >= 0.10.1
-- Tree-sitter parsers: markdown, markdown_inline, html.
-- Nerd font.
return {
  'OXY2DEV/markview.nvim',
  lazy = false, -- Recommended
  -- ft = "markdown" -- If you decide to lazy-load anyway

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('markview').setup {
      hybrid_mode = { 'n' },
    }
  end,
}
