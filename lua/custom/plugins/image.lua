return {
  {
    'vhyrro/luarocks.nvim',
    priority = 1001, -- this plugin needs to run before anything else
    opts = {
      rocks = { 'magick' },
    },
  },
  {
    '3rd/image.nvim',
    config = function()
      require('image').setup {
        backend = 'kitty',
        kitty_method = 'normal',
        integrations = {
          markdown = {
            enabled = true,
            clear_in_insert_mode = false,
            download_remote_images = true,
            only_render_image_at_cursor = false,
            filetypes = { 'markdown', 'vimwiki', 'cpp', 'c', 'python', 'lua', 'bash', 'sh', 'zsh', 'fish', 'javascript', 'typescript', 'html', 'css' },
          },
          neorg = {
            enabled = true,
            clear_in_insert_mode = false,
            download_remote_images = true,
            only_render_image_at_cursor = false,
            filetypes = { 'norg' },
          },
          html = {
            enabled = true,
            clear_in_insert_mode = false,
            download_remote_images = true,
            only_render_image_at_cursor = false,
            filetypes = { 'html', 'htm' },
          },
        },
        max_width = nil,
        max_height = nil,
        max_width_window_percentage = 90,
        max_height_window_percentage = 70,
        window_overlap_clear_enabled = true, -- Clear overlap when split
      }
    end,
  },
}
