return {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = function()
        local todo = require("todo-comments")
        return {
            {
                "<leader>cn",
                function() todo.jump_next() end,
                desc ="todo-[c]omments jump to [n]ext"
            },
            {
                "<leader>cp",
                function() todo.jump_prev() end,
                desc ="todo-[c]omments jump to [p]revious"
            },
            {
                "<leader>ct",
                vim.cmd.TodoTelescope,
                desc ="todo-[c]omments open [t]elescope"
            },
        }
    end,
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    }
}
