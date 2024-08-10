return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    event = "VeryLazy",
    dependencies = {
        -- LSP Support
        'neovim/nvim-lspconfig',
        {
            'williamboman/mason.nvim',
            lazy = false,
            config = true
        },
        'williamboman/mason-lspconfig.nvim',

        -- Autocompletion
        {
            'hrsh7th/nvim-cmp',
            event = "InsertEnter",
            dependencies = {
                'hrsh7th/cmp-nvim-lsp',
                'hrsh7th/cmp-buffer',
                'hrsh7th/cmp-path',
                'saadparwaiz1/cmp_luasnip',
                'hrsh7th/cmp-nvim-lua',
                -- Snippets
                'L3MON4D3/LuaSnip',
                'rafamadriz/friendly-snippets',
            },
        },
    },

    config = function()
        local lsp = require("lsp-zero").preset("recommended")

        lsp.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        require('mason-lspconfig').setup({
            ensure_installed = {
                'tsserver',
                'html',
                'bashls',
                'cssls',
                'jsonls',
                'yamlls',
                'texlab',
                'pyright',
                'rust_analyzer',
            },
            handlers = {
                lsp.default_setup,
            }
        })

        lsp.set_preferences({
            suggest_lsp_servers = false,
            sign_icons = {
                error = 'E',
                warn = 'W',
                hint = 'H',
                info = 'I'
            }
        })

        lsp.on_attach(function(client, bufnr)
            local opts = {buffer = bufnr, remap = false}

            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        end)

        lsp.setup()

        -- Setting up Python LSP to use the .config file to get the virtualenv path
        local util = require('lspconfig/util')
        local path = util.path

        local function ReadLine(path, line)
            local f = io.open(path) -- 'r' is unnecessary because it's a default value.
            local i = 1 -- line counter
            for l in f:lines() do -- lines iterator, "l" returns the line
                if i == line then return l end -- we found this line, return it
                i = i + 1 -- counting lines
            end
            return "" -- Doesn't have that line
        end

        local function file_exists(name)
            local f=io.open(name,"r")
            if f~=nil then io.close(f) return true else return false end
        end

        local function get_python_path(workspace)
            -- Use activated virtualenv.
            if vim.env.VIRTUAL_ENV then
                return path.join(vim.env.VIRTUAL_ENV, 'bin', 'python')
            end

            -- Find and use virtualenv in workspace directory.
            local cofig_file_path = path.join(workspace, '.virtualenv.path')
            if file_exists(cofig_file_path) then
                local pathToVirtualenv = ReadLine(cofig_file_path, 1)
                return path.join(pathToVirtualenv, 'bin', 'python')
            end

            -- Fallback to system Python.
            return 'python'
        end

        require('lspconfig')['pyright'].setup {
            before_init = function(_, config)
                config.settings.python.pythonPath = get_python_path(config.root_dir)
            end
        }

        vim.diagnostic.config({
            virtual_text = true,
        })
    end
}
