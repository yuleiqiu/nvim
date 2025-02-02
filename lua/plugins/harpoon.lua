return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },

    keys = function()
        local harpoon = require("harpoon")
        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers").new({}, {
                prompt_title = "Harpoon",
                finder = require("telescope.finders").new_table({
                    results = file_paths,
                }),
                previewer = conf.file_previewer({}),
                sorter = conf.generic_sorter({}),
            }):find()
        end

        local keys = {
            {
            "<leader>ha",
            function()
              require("harpoon"):list():add()
            end,
            desc = "[h]arpoon [a]dd file",
            },

            {
            "<leader>h",
            function()
              local harpoon = require("harpoon")
              harpoon.ui:toggle_quick_menu(harpoon:list())
            end,
            desc = "[h]arpoon quick menu",
            },

            {
            "<leader>ht",
            function() toggle_telescope(harpoon:list() )end,
            desc = "open [h]arpoon in [t]elescope"
            }
        }
        for i = 1, 5 do
          table.insert(keys, {
            "<leader>h" .. i,
            function()
              require("harpoon"):list():select(i)
            end,
            desc = "[h]arpoon to File " .. i,
            })
        end
        return keys
    end,

    opts = function(_, opts)
        opts.settings = {
            save_on_toggle = true,
            sync_on_ui_close = true,
            key = function()
                return vim.loop.cwd()
            end
        }
    end,

    config = function(_, opts)
        require("harpoon").setup(opts)
    end,
}
