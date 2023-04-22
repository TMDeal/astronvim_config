require "user.django"

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

-- autocmd("VimEnter", {
--   desc = "Auto select virtualenv Nvim open",
--   pattern = "*",
--   callback = function()
--     local project_ok, project = pcall(require, "project_nvim.project")
--     if not project_ok then return end
--
--     local root_dir = project.get_project_root()
--     if not root_dir then root_dir = vim.fn.getcwd() end
--
--     print(root_dir)
--     local venv = vim.fn.findfile("pyproject.toml", root_dir .. ";")
--     print(venv)
--     -- local is_django = vim.fn.filereadable(rootdir .. "/pyproject.toml")
--     if venv ~= "" then require("venv-selector").retrieve_from_cache() end
--   end,
--   once = true,
-- })
