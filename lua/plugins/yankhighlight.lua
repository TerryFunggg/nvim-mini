local augroup = vim.api.nvim_create_augroup("HighlightYank", { clear = true })

local function main()
    vim.highlight.on_yank()
end

local function setup()
    vim.api.nvim_create_autocmd("TextYankPost", {
        desc = 'Highlight when yanking (copying) text',
        group = augroup,
        callback = main
    })
end

return {
    setup = setup,
}
