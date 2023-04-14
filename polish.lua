local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local markdown = augroup("markdown", { clear = true })

-- enable word wrap and spellcheck for markdown/pandoc files
autocmd("FileType", {
    group = markdown,
    pattern = { "pandoc", "markdown" },
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.autowriteall = true
        vim.opt_local.textwidth = 85
    end
})

-- Disable auto commenting new lines
autocmd("BufEnter", {
    pattern = "*",
    command = "set fo-=c fo-=r fo-=o",
})
