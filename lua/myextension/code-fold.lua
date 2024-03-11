-- @since:2024-03-11
-- @author: Terry Fung
-- Require treesitter 

local augroup = vim.api.nvim_create_augroup("CodeFold", { clear = true })

local function custom_fold_text()
    local v = vim.v
    local fn = vim.fn

    local foldLevel = string.rep("#", v.foldlevel)

    local fold_line_count = v.foldend - v.foldstart + 1
    local foldSize =  fold_line_count .. " lines "

    local winwidth = vim.fn.winwidth(0)
    local foldSizeStrWidth = vim.fn.strwidth(foldSize .. foldLevel)

    local indent = string.rep(" ", winwidth - foldSizeStrWidth - 10) -- magic number 10 :)



    return indent .. foldSize .. foldLevel
end

local function main()
    local vim = vim
    local opt = vim.opt


    opt.foldmethod = "indent"
    -- opt.foldmethod = "expr"
    opt.foldexpr = "nvim_treesitter#foldexpr()"
    opt.foldenable = false

    opt.fillchars = { eob = "-", fold = " " }
    opt.foldtext = "v:lua.require'myextension.code-fold'.custom_fold_text()"
end

local function setup()
    vim.api.nvim_create_autocmd("VimEnter",{
        group = augroup,
        desc = "Better folding style using treesitter",
        once = true,
        callback = main
    })
end

return {
    setup = setup,
    custom_fold_text = custom_fold_text
}
