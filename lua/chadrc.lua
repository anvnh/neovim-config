local M = {}

M.base46 = {
  theme = 'catppuccin',
  -- theme = 'gruvbox',
  -- theme = 'github_dark',
  -- transparency = false,
  -- transparency = true,
}

M.nvdash = {
  load_on_startup = true,
  header = {
    '                            ',
    '     ▄▄         ▄ ▄▄▄▄▄▄▄   ',
    '   ▄▀███▄     ▄██ █████▀    ',
    '   ██▄▀███▄   ███           ',
    '   ███  ▀███▄ ███           ',
    '   ███    ▀██ ███           ',
    '   ███      ▀ ███           ',
    '   ▀██ █████▄▀█▀▄██████▄    ',
    '     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ',
    '                            ',
    '     Powered By anryn    ',
    '                            ',
  },

  buttons = {
    { txt = '  Find File', keys = 'Spc f f', cmd = 'Telescope find_files' },
    { txt = '  Recent Files', keys = 'Spc f o', cmd = 'Telescope oldfiles' },
    -- more... check nvconfig.lua file for full list of buttons
  },
}

M.ui = {
  winblend = 10,
  cmp = {
    lspkind_text = false,
    style = 'flat_dark', -- default/flat_light/flat_dark/atom/atom_colored
    format_colors = {
      tailwind = false,
    },
  },
  telescope = { style = 'borderless' }, -- borderless / bordered
  statusline = {
    theme = 'default', -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = 'arrow',
    order = nil,
    modules = {},
    overrides = {},
  },
  tabufline = {
    enabled = true,
    order = { 'treeOffset', 'buffers', 'tabs', 'btns' },
    modules = nil,
    bufwidth = 13,
  },
  lsp = { signature = true },
  cheatsheet = {
    theme = 'simple', -- simple/grid
    excluded_groups = { 'terminal (t)', 'autopairs', 'Nvim', 'Opens' }, -- can add group name or with mode
  },
  colorify = {
    enabled = true,
    mode = 'virtual', -- fg, bg, virtual
    virt_text = ' 󱓻 ',
    highlight = { hex = true, lspvars = true },
  },
}

return M
