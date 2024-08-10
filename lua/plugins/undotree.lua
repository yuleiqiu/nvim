return {
    "mbbill/undotree",
    keys = {
        {
            "<leader>ut",
            vim.cmd.UndotreeToggle,
            desc="[u]ndotree [t]oggle"
        },
    },
    config = function()
        vim.g.undotree_WindowLayout = 2
    end
}
