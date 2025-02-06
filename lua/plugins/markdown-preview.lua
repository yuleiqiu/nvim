return {
    "iamcco/markdown-preview.nvim",
    build = "npm install",
    ft = { "markdown" },
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    keys = {
        {
            "<leader>mp",
            vim.cmd.MarkdownPreviewToggle,
            desc="[m]arkdown-[p]review toggle markdown preview in browser"
        },
    }
}
