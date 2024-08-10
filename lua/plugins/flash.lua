return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
    },
    keys = {
        {
            "s",
            mode = { "n", "o", "x" },
            function()
                require("flash").jump({})
            end,
            desc = "[Flash]: Start jumping"
        },
    },
    config = function()
        require("flash").toggle(false)
    end
}

