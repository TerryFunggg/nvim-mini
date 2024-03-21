-- @since:2024-03-12
-- @author: Terry Fung
-- Require golang

local augroup = vim.api.nvim_create_augroup("AfterBufferWrite", { clear = true })


local function main()
    local filename = vim.fn.expand('%')
    if vim.bo.filetype == 'go' then
        require("go.format").goimport()
    end
end

local function setup()
    vim.api.nvim_create_autocmd("BufWritePre",{
        pattern = {"*.go", "*.c"},
        group = augroup,
        desc = "custom on save hook",
        callback = main
    })
end

return {
    setup = setup,
}
