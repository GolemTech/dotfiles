return {
  "stevearc/conform.nvim",
  keys = {
    {
      "<leader>cF",
      function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end,
      mode = { "n", "v" },
      desc = "Format Injected Langs",
    },
  },
  opts = function()
    ---@class ConformOpts
    local opts = {
      -- LazyVim will use these options when formatting with the conform.nvim formatter
      format = {
        lsp_fallback = true,
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
      },
      formatters_by_ft = {
        fish = { "fish_indent" },
        sh = { "shfmt" },
        terraform = { "terraform_fmt" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = {
          -- To fix lint errors.
          "ruff_fix",
          -- To run the Ruff formatter.
          "ruff_format",
          "isort",
          "black",
        },
      },
      -- The options you set here will be merged with the builtin formatters.
      -- You can also define any custom formatters here.
      formatters = {
        ruff_fix = require("config.formatters.ruff_fix"),
        ruff_format = require("config.formatters.ruff_format"),
        isort = require("config.formatters.isort"),
        black = require("config.formatters.black"),
      },
    }
    return opts
  end,
}
