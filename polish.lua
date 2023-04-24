require "user.django"

local notify = require "notify"
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local markdown = augroup("markdown", { clear = true })

-- enable word wrap and spellcheck for markdown/pandoc files
autocmd("FileType", {
  desc = "Markdown specific settings",
  group = markdown,
  pattern = { "pandoc", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.autowriteall = true
    vim.opt_local.textwidth = 85
  end,
})

autocmd("VimEnter", {
  desc = "Auto select cached virtualenv selection on open",
  pattern = "*",
  callback = function()
    local project_ok, project = pcall(require, "project_nvim.project")
    if not project_ok then return end

    local root_dir = project.get_project_root()
    if not root_dir then root_dir = vim.fn.getcwd() end

    local has_pyproject = vim.fn.findfile("pyproject.toml", root_dir .. ";")
    local has_venv = vim.fn.finddir("venv", root_dir .. ";")
    local venv = has_pyproject ~= "" or has_venv ~= ""

    local old_notify = vim.notify

    vim.notify = function(msg, level, opts)
      if msg == "Error reading cache" and opts.title == "VenvSelect" then return end
      return notify(msg, level, opts)
    end

    if venv then require("venv-selector").retrieve_from_cache() end

    vim.notify = old_notify
  end,
  once = true,
})
