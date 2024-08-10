return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects'
    },
    config = function()
        local treesitter = require('nvim-treesitter.configs')
        treesitter.setup({
            auto_install = true,
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            autotag = {
                enable = true,
            },
            fold = {
                enable = true,
            },
            ensure_installed = 'all',
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<leader> ',
                    node_incremental = '<leader>',
                    scope_incremental = false,
                    node_decremental = '<bs>',
                },
            },
        })
    end
}
