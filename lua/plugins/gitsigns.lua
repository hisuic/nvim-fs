return {
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre", -- for faster load
    config = function()
      require("gitsigns").setup({
        signs = {
          add          = { text = "│" },
          change       = { text = "│" },
          delete       = { text = "_" },
          topdelete    = { text = "‾" },
          changedelete = { text = "~" },
          untracked    = { text = '┆' },
        },
        current_line_blame = true,
      })

      local keymap = vim.keymap.set

      keymap("n", "]c", gitsigns.next_hunk)
      keymap("n", "[c", gitsigns.prev_hunk)

      keymap("n", "<leader>hs", gitsigns.stage_hunk)
      keymap("n", "<leader>hr", gitsigns.reset_hunk)
      keymap("n", "<leader>hp", gitsigns.preview_hunk)

      keymap("n", "<leader>tb", gitsigns.toggle_current_line_blame)

    end,
  }
}
