-- @since:2024-03-12
-- @author: Terry Fung
-- Require golang

local augroup = vim.api.nvim_create_augroup("AfterBufferWrite", { clear = true })


local function main()
    local filename = vim.fn.expand('%')
    if vim.bo.filetype == 'go' then
        local abs_path = vim.api.nvim_buf_get_name(0)
        local handle = io.popen("go fmt " .. abs_path)
        local result = handle:read("*a")
        handle.close()

        vim.cmd("e!")
    end
end

local function setup()
    vim.api.nvim_create_autocmd("BufWritePost",{
        pattern = {"*.go", "*.c"},
        group = augroup,
        desc = "custom on save hook",
        callback = main
    })
end

return {
    setup = setup,
}
