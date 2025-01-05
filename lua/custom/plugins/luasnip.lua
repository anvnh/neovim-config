return {
  'L3MON4D3/LuaSnip',
  dependencies = {
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
  },
  -- Snippet location
  config = function()
    require('luasnip.loaders.from_lua').load()
    require('luasnip.loaders.from_lua').lazy_load { paths = vim.g.lua_snippets_path or '~/.config/nvim/lua/custom/snippets/' }
    require('luasnip.loaders.from_lua').lazy_load { paths = vim.g.lua_snippets_path or '~/.config/nvim/lua/custom/snippets/cp/' }
  end,
}
