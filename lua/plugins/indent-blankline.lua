-- return {
--     "lukas-reineke/indent-blankline.nvim",
--     lazy = false,
--     main = "ibl",
--     opts = {}, -- Can be left empty or used for default configurations
--     config = function()
--         -- Define rainbow color groups
--         local highlight = {
--             "RainbowRed",
--             "RainbowYellow",
--             "RainbowBlue",
--             "RainbowOrange",
--             "RainbowGreen",
--             "RainbowViolet",
--             "RainbowCyan",
--         }

--         -- Get hooks
--         local hooks = require "ibl.hooks"

--         -- Create highlight groups in the highlight setup hook
--         -- This ensures they are reset every time the colorscheme changes
--         hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--             vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
--             vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
--             vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
--             vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
--             vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
--             vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
--             vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
--         end)

--         -- Call setup and enable rainbow colors along with other configurations
--         require("ibl").setup {
--             indent = {
--                 highlight = highlight, -- Enable rainbow colors
--             },
--             scope = {
--                 highlight = { "Function", "Label" },
--                 show_start = true, -- Show scope start markers
--                 show_end = false, -- Show scope end markers
--             },
--         }
--     end,
-- }

return {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    main = "ibl",
    opts = {},
    config = function ()
        require("ibl").setup {
            scope = {
                -- highlight = { "Function", "Label" },
                show_start = true,
                show_end = false,
            }
        }
    end
}