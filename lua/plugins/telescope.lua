return {
    "nvim-telescope/telescope.nvim",
    cmd = { "Telescope" },
    lazy = true,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'nvim-telescope/telescope-media-files.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        }
    },
    keys = function()
        local cmd = "<cmd>Telescope "
        return {
            {
                "<C-f>",
                cmd .. "git_files<CR>",
                desc = "[Telescope] [S]search [G]it files"
            },
            {
                "<leader>sf",
                cmd .. "find_files<CR>",
                desc = "[Telescope] [S]earch [F]iles"
            },
            {
                "<leader>sg",
                cmd .. "live_grep<CR>",
                desc = "[Telescope] [S]earch by [G]rep"
            },
            {
                "<leader>sk",
                cmd .. "keymaps<CR>",
                desc = "[Telescope] [S]earch [K]eywords"
            },
            {
                "<leader>sc",
                cmd .. "git_commits<CR>",
                desc = "[Telescope] [S]earch [C]ommits"
            },
        }
    end,
    opts = function(_, opts)
        opts.defaults = {
            layout_config = {
                prompt_position = "top",
                height = 0.8,
                width = 0.8,
            },
            layout_strategy = "horizontal",
            prompt_prefix = " ",
            selection_caret = " ",
            sorting_strategy = "ascending",
            winblend = 0,
        }
        opts.pickers = {
            colorscheme = { enable_preview = true },
        }
        opts.extensions = {
            file_browser = {
                hijack_netrw = true,
            },
            fzf = {
                fuzzy = true, -- false will only do exact matching
                override_generic_sorter = true, -- override the generic sorter
                override_file_sorter = true, -- override the file sorter
                case_mode = "smart_case", -- or "ignore_case" or "respect_case". the default case_mode is "smart_case"
            },
        }
    end,

    config = function(_, opts)
        local telescope = require("telescope")
        telescope.setup(opts)
        telescope.load_extension("fzf")
    end,
}
