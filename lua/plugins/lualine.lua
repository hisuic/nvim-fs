return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          globalstatus = true,
        },

        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = {
            {
              "filename",
              path = 1,
            },
          },
          lualine_x = { "encoding", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },

        tabline = {
          lualine_a = {
            {
              "buffers",
              mode = 0, -- Buffer number + File name
              icons_enabled = true,
              show_filename_only = true,
              hide_filename_extension = false,
              show_modified_status = true,

              buffers_color = {
                active = "lualine_a_normal",
                inactive = "lualine_b_inactive",
              },

              symbols = {
                modified = " ●",
                alternate_file = "",
                directory = "",
              },
            },
          },
          lualine_z = { "tabs" },
        },
      })
    end,
  },
}
