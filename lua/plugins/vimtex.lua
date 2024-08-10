return {
    'lervag/vimtex',
    ft={'tex', 'plaintex'},
    keys={
        {
            "<leader>vc",
            vim.cmd.VimtexCompile,
            desc="[v]imtex toggle [c]ompilation and open pdf"
        },
    },
    config=function()
        vim.g.vimtex_compiler_latexmk = {
            options = {
                '-pdf',
                '-shell-escape',
                '-verbose',
                '-file-line-error',
                '-synctex=1',
                '-interaction=nonstopmode',
            },
        }

        -- Disable syntax highlighting and allow treesitter to do the job 
        -- instead.
        vim.g.vimtex_syntax_enabled = 0
    end
}
