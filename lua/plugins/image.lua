return {
    "3rd/image.nvim",
    ft = {"markdown"},
    opts = {
        backend = "kitty",
        max_height_window_percentage = 80,
        max_width_window_percentage = 100,
        window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
        editor_only_render_when_focused = true,
        only_render_image_at_cursor=true,
        integrations = {
          markdown = {
            download_remote_images = true,
            only_render_image_at_cursor = true,
          only_render_image_at_cursor_mode = "popup",
          }
        }
    },
  }

