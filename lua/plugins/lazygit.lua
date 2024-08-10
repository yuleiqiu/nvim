return {
    'kdheepak/lazygit.nvim',
    keys = {
        {
            "<leader>lg",
            vim.cmd.LazyGit,
            desc="[l]azy[g]it toggle lazygit UI."
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        'tpope/vim-fugitive',
    },
}
