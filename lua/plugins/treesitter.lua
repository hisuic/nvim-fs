return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
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
      },

      auto_install = true,

      highlight = {
        enable = true,
        -- Ruby など一部は regex ハイライト併用が欲しい場合がある
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,
        -- もし崩れる言語があればここで disable する
        -- disable = { "ruby" },
      },

      -- Syntax tree-based selection
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          scope_incremental = "<S-CR>",
          node_decremental = "<BS>",
        },
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
