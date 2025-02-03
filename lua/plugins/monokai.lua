return {
    "tanvirtin/monokai.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        -- Apply colorscheme
        vim.cmd [[colorscheme monokai]]
    end,
}