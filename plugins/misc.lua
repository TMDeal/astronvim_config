return {
  {
    "lambdalisue/suda.vim",
    cmd = "SudaWrite",
  },

  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = false,
  },

  {
    "sindrets/diffview.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
  },
}
