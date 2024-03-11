require("aerial").setup({
    backends = { "treesitter", "lsp", "markdown", "asciidoc", "man" },

    layout = {
        max_width = { 40, 0.2},
        width = nil,
        min_width = 20,

        default_direction = "prefer_left",
        placement = "window",
        resize_to_content = true,
        preserve_equality = false,
    },

    attach_mode = "window",

    close_automatic_events = {
        "unfocus"
    },
    
    on_attach = function(bufnr)
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
    end,
})
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")

