return {
    'kiran94/edit-markdown-table.nvim',
    ft = 'markdown',
    config = true,
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'stevearc/dressing.nvim',
    },
    keys = {
        {
            '<leader>et',
            vim.cmd.EditMarkdownTable,
            desc="[E]dit markdown [t]able"
        },
    },
}
