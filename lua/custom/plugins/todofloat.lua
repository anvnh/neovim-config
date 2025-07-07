return {
  'anvnh/todo-float.nvim',
  config = function()
    require('todofloat').setup {
      target_file = '~/notes/todo.md',
    }
  end,
}
