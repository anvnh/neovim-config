return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require('nvim-tree').setup {
      git = {
        enable = true,
        ignore = false,
      },
      filters = {
        dotfiles = false, -- Optional: show dotfiles like .gitignore
      },
    }

    local function toggle_git_ignore()
      require('nvim-tree.api').tree.toggle_gitignore_filter()
      print 'Toggled nvim-tree gitignore filter'
    end
    vim.keymap.set('n', '<leader>gi', toggle_git_ignore, create_desc 'Toggle .gitignore files in nvim-tree')
  end,
}
