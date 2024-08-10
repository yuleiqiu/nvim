return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
        {
            "<leader>gp",
            ":Gitsigns preview_hunk<CR>",
            desc="[g]itsigns [p]review hunk"
        },
    },
    config = function()
        require('gitsigns').setup {
            current_line_blame = true,
        }
    end
}
