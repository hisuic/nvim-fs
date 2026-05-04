local parsers = {
  "bash",
  "c",
  "html",
  "javascript",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "query",
  "regex",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "yaml",
  "rust",
}

return {
  {
    "neovim-treesitter/nvim-treesitter",
    dependencies = { "neovim-treesitter/treesitter-parser-registry" },
    lazy = false,
    build = function()
      require("nvim-treesitter").install(parsers, { summary = true }):wait(300000)
    end,
    opts = {
      install_dir = vim.fn.stdpath("data") .. "/site",
      ensure_installed = parsers,
    },
    config = function(_, opts)
      local treesitter = require("nvim-treesitter")

      treesitter.setup({
        install_dir = opts.install_dir,
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = opts.ensure_installed,
        callback = function(args)
          vim.treesitter.start(args.buf)
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
      })
    end,
  },
}
