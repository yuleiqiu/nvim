return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            background = {
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false,
            show_end_of_buffer = true,
            term_colors = true,
            dim_inactive = {
                enabled = true,
                shade = "dark",
                percentage = 0.20,
            },
            no_italic = false,
            no_bold = false,
            no_underline = false,
            styles = {
                comments = { "italic" },
                conditionals = { "italic", "bold" },
                loops = { "bold" },
                functions = { "bold" },
                keywords = { "bold" },
                strings = {},
                variables = {},
                numbers = {},
                booleans = { "bold" },
                properties = {},
                types = { "italic" },
                operators = {},
            },
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                    surface0 = "#3e4451",
                    surface1 = "#545862",
                    surface2 = "#565c64",
                    text = "#abb2bf",
                    rosewater = "#b6bdca",
                    lavender = "#c8ccd4",
                    red = "#e06c75",
                    peach = "#d19a66",
                    yellow = "#e5c07b",
                    green = "#98c379",
                    teal = "#56b6c2",
                    blue = "#61afef",
                    mauve = "#c678dd",
                    flamingo = "#be5046",
                    maroon = "#e06c75",
                    sky = "#d19a66",
                    pink = "#F5C2E7",
                    sapphire = "#74C7EC",
                    subtext1 = "#BAC2DE",
                    subtext0 = "#A6ADC8",
                    overlay2 = "#9399B2",
                    overlay1 = "#7F849C",
                    overlay0 = "#6C7086",
                },
            },
            highlight_overrides = {
                mocha = function(C)
                    return {
                        TabLineSel = { bg = C.pink, fg = C.text },
                        CmpBorder = { fg = C.surface2 },
                        Pmenu = { bg = C.surface0, fg = C.text },
                        TelescopeBorder = { link = "FloatBorder" },
                    }
                end,
            },
            custom_highlights = {},
            integrations = {
                cmp = true,
                gitsigns = true,
                mason = true,
                markdown = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                nvimtree = true,
                noice = true,
                notify = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
                mini = {
                    enabled = true,
                    indentscope_color = "overlay0",
                },
            },
        })

        vim.cmd [[colorscheme catppuccin]]
    end
}

