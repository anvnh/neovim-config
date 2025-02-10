-- NeoVim >= 0.8.0

return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    disable_frontmatter = true,
    workspaces = {
      {
        name = 'ObsidianVault',
        path = '~/Documents/ObsidianVault',
      },
    },
    daily_notes = {
      folder = '2. Workspace/Daily Notes',
      -- date_format = 'YYYY/MMMM/YYYY-MM-DD-dddd',
      date_format = '%Y/%B/%Y-%m-%d-%A',
      template = 'Daily.md',
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    templates = {
      folder = '3. Resources/Templates',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M',
      -- A map for custom variables, the key should be the variable and the value a function
      substitutions = {},
    },
  },
}
