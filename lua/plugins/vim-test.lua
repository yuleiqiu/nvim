return {
    'vim-test/vim-test',
    dependencies = {
        'preservim/vimux',
    },
    keys = {
        {
            "<leader>vn",
            ":TestNearest<CR>",
            desc="[v]im-test test [n]earest"
        },
        {
            "<leader>vf",
            ":TestFile<CR>",
            desc="[v]im-test test [f]ile"
        },
        {
            "<leader>vs",
            ":TestSuite<CR>",
            desc="[v]im-test test [s]uite"
        },
        {
            "<leader>vl",
            ":TestLast<CR>",
            desc="[v]im-test test [l]ast"
        },
        {
            "<leader>vv",
            ":TestLast<CR>",
            desc="[v]im-test test [v]ist"
        },
    },
    config = function()
        -- This is to let this plugin to open new tmux pane on running test.
        vim.cmd("let test#strategy = 'vimux'")
    end,
}
