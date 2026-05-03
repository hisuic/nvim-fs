return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("kanagawa").setup({
        transparent = true,
        overrides = function(colors)
          return {
            Visual = { bg = "#046204" },
          }
        end,
      })
      vim.cmd.colorscheme("kanagawa-dragon")
    end,
  },
}
