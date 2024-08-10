return {
    dir = "~/.local/share/nvim/lazy/csv-column-fold.nvim",
    keys = function()
        local csv_column_fold = require('csv-column-fold')

        return {
            {
                "<leader>za",
                function() csv_column_fold.fold() end,
                desc = ""
            },
        }
    end,
}
