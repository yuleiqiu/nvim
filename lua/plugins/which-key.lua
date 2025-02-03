return {
    "folke/which-key.nvim",

    -- Use "VeryLazy" event to delay plugin loading for better startup performance
    event = "VeryLazy",

    -- Key bindings
    keys = {
        -- Show which-key menu with <leader>wk
        {
            "<leader>wk",
            function()
                require("which-key").show({})
            end,
            desc = "[which-key] Show all keymaps",
        },
    },

    -- Initialization function to set timeout options
    init = function()
        -- Enable key timeout and set timeout length to 500 ms
        vim.o.timeout = true
        vim.o.timeoutlen = 500
    end,
}

