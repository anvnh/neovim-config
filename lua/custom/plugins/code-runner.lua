return {
  {
    'CRAG666/code_runner.nvim',
    config = function()
      require('code_runner').setup {
        mode = 'term',
        focus = true,
        startinsert = true,

        term = {
          -- Instead of "bot", use belowright or botright:
          position = 'belowright',
          size = 12,
        },
        filetype = {
          python = "python3 -u $fileName && echo 'Press any key...' && read -n 1",
          java = "javac $fileName && java $fileNameWithoutExt && echo 'Press any key...' && read -n 1",
        },
      }
    end,
  },
}
