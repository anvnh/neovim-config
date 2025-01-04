local M = {}

M.base46 = {
  theme = 'catppuccin',
  transparency = true,
}

M.ui = {
  cmp = {
    lspkind_text = true,
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
    separator_style = 'default',
    order = nil,
    modules = nil,
    global_status = true,
  },
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { 'treeOffset', 'buffers', 'tabs', 'btns' },
    modules = nil,
    bufwidth = 30,
  },
  lsp = { signature = true },
  cheatsheet = {
    theme = 'grid', -- simple/grid
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
