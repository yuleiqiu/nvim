return {
    "nguyenvukhang/nvim-toggler",
    event = {"BufReadPost", "BufNewFile"},
    keys = function()
        local toggler = require("nvim-toggler")
        return {
            {
                "<leader>tn",
                toggler.toggle,
                desc="nvim-[t]oggler toggle opera[n]d"
            },
        }
    end,
    config = function()
        local toggler = require("nvim-toggler")

        toggler.setup({
            inverses = {
                [">="] = "<=",
                [">"] = "<",
            },
            remove_default_keybinds = true,
            remove_default_inverses = false,
        })
    end,
}
