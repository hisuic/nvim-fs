return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")

    wk.setup({})

    wk.add({
      { "<leader>f", group = "find" },
      { "<leader>h", group = "hunk/git" },
      { "<leader>l", group = "lazy/lsp" },
      { "<leader>t", group = "toggle" },
      { "<leader>e", desc = "Open oil.nvim" },
    })
  end,
}
