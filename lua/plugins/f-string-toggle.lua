return {
    "roobert/f-string-toggle.nvim",
    ft = { "python" },
    config = function()
        require("f-string-toggle").setup({
            key_binding = "<leader>pf",
            key_binding_desc = "[f-string-toggle] [P]ython toggle [f]-string"
        })
    end,
}