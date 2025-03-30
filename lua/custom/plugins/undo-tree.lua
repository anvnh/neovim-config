return {
  'mbbill/undotree',
  config = function()
    vim.g.undotree_SetFocus = 1 -- Focus on undotree when toggled
    vim.g.undotree_WindowLayout = 3 -- Use layout 3 to position on the right
    vim.g.undotree_SplitWidth = 40
  end,
}
