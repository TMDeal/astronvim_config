return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.project.neoconf-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.project.project-nvim" },

  { import = "astrocommunity.scrolling.cinnamon-nvim" },

  { import = "astrocommunity.debugging.nvim-bqf" },

  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
}
