return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    keys = {
        {
            "<leader>tt",
            vim.cmd.NvimTreeToggle,
            desc="nvim-[t]ree [t]oggle"
        },
    },
    config = function()
        -- Setup with some options
        require("nvim-tree").setup({
            sort = {
                sorter = "filetype",
            },
            view = {
                width = 30,
                relativenumber = true,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })
    end
}
