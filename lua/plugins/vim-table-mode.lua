return {
    'dhruvasagar/vim-table-mode',
    ft={'markdown', 'tex', 'plaintex'},
    keys = {
        {
            "<leader>tm",
            vim.cmd.TableModeToggle,
            desc="vim-[t]able-mode toggle table [m]ode for markdown and latex."
        },
    }
}
