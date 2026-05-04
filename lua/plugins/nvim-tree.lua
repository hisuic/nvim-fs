return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },

        sync_root_with_cwd = true,
        respect_buf_cwd = true,
      })

      -- keymap
      vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Tree" })
    end,
  },
}
