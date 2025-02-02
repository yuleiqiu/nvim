-- Define the installation path for the lazy.nvim plugin
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if lazy.nvim is installed; if not, clone it from GitHub
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",  -- Clone the latest stable version
        lazyrepo,
        lazypath,
    })

    -- Handle cloning failure
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

-- Add the lazy.nvim plugin path to the runtimepath
vim.opt.rtp:prepend(lazypath)

-- Define the options for plugin management
local opts = {
    defaults = {
        lazy = true,  -- Enable lazy loading of plugins by default
    },
    checker = {
        enabled = true,  -- Enable automatic plugin update checks
        notify = true,   -- Enable update notifications
    },
    change_detection = {
        notify = true,  -- Notify when there are changes in the plugin configuration
    },
    performance = {
        rtp = {
            -- Disable some built-in plugins to improve performance
            disabled_plugins = {
                "gzip",         -- Support for .gz compressed files
                "tarPlugin",    -- Support for .tar archive files
                "zipPlugin",    -- Support for .zip compressed files
                "tohtml",       -- Convert syntax-highlighted code to HTML
                "tutor",        -- Vim tutorial
                "editorconfig", -- Support for .editorconfig files
                "matchit",      -- Extend % to jump between matching tags and blocks
                "netrwPlugin",  -- We will use treesitter instead
            },
        },
    },
}

-- Load lazy.nvim and set up the plugins
local lazy = require("lazy")
lazy.setup("plugins", opts)

-- Set the keymap to open the lazy.nvim interface with <leader>L
vim.keymap.set("n", "<leader>L", ':lua require("lazy").show()<CR>')
