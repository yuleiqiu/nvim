return {
    'iamcco/markdown-preview.nvim',
    build = 'cd app && yarn install',
    ft = 'markdown',
    keys = {
        {
            "<leader>mp",
            vim.cmd.MarkdownPreviewToggle,
            desc="[m]arkdown-[p]review toggle markdown preview in browser"
        },
    }
}
