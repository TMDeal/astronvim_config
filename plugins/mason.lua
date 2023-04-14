return {
  {
    "williamboman/mason.nvim",
    opts = {
      path = "append",
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "cssls",
        "html",
        "tsserver",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
        "stylua",
        "black",

        "flake8",
        "djlint",
        "eslint",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        "python",
      },
    },
  },
}
