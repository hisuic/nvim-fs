return {
  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      signs = true,
      keywords = {
        TODO = { icon = " ", color = "info" },
        FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG" } },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
      },
    },
  },
}
