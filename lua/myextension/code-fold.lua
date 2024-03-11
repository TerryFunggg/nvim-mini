-- @since:2024-03-11
-- @author: Terry Fung
-- Require treesitter 

local augroup = vim.api.nvim_create_augroup("CodeFold", { clear = true })


local function main()
    local vim = vim
    local opt = vim.opt


    opt.foldmethod = "expr"
    opt.foldexpr = "nvim_treesitter#foldexpr()"
    opt.foldenable = false
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
}
