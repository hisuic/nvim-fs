-- lua/plugins/oil.lua
return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  opts = {
    default_file_explorer = true, -- disable netrw and use oil when opening a directory
    columns = { -- what we see with oil
      "icon",
      "permissions",
      "size",
      "mtime",
    },
    view_options = { -- show hidden files
      show_hidden = true,
    },
    keymaps = { -- actions with vim-like kepmaps
      ["<CR>"] = "actions.select",          -- open a file or directory
      ["-"] = "actions.parent",             -- open parent directory
      ["_"] = "actions.open_cwd",           -- open current working directory
      ["<C-v>"] = "actions.select_vsplit",  -- vertical split right and open file
      ["<C-s>"] = "actions.select_split",   -- horizontal split below and open file
      ["<C-p>"] = "actions.preview",        -- see previews without opening the file
      ["q"] = "actions.close",              -- close
    },
  },
}
