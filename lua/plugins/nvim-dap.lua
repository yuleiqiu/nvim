return {
    'mfussenegger/nvim-dap',
    dependencies = {
        'rcarriga/nvim-dap-ui',
        'theHamsta/nvim-dap-virtual-text',
        'mfussenegger/nvim-dap-python',
        'nvim-neotest/nvim-nio',
    },
    config = function()
        require('dapui').setup()
        require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
        vim.fn.sign_define('DapBreakpoint', { text='🔴', numhl='DapBreakpoint' })
        vim.fn.sign_define('DapBreakpointCondition', { text='❓', numhl='DapBreakpoint' })
    end,
    keys = function()
        local dap = require('dap')
        local dapui = require('dapui')
        return {
            {
                "<leader>db",
                function() dap.toggle_breakpoint() end,
                desc="nvim-[d]ap [b]reakpoint"
            },
            {
                "<leader>dB",
                function() dap.set_breakpoint(vim.fn.input("Breakpoint condition: ")) end,
                desc="nvim-[d]ap [B]reakpoint condition"
            },
            {
                "<leader>dc",
                function() dap.clear_breakpoints() end,
                desc="nvim-[d]ap [B]reakpoint clear"
            },
            {
                "<leader>dt",
                function() dapui.toggle() end,
                desc="nvim-[d]apui [t]oggle"
            },
            {
                "<F5>",
                function() dap.continue() end,
                desc="nvim-dap continue"
            },
            {
                "<F10>",
                function() dap.step_over() end,
                desc="nvim-dap step over"
            },
            {
                "<F11>",
                function() dap.step_into() end,
                desc="nvim-dap step into"
            },
            {
                "<F12>",
                function() dap.step_out() end,
                desc="nvim-dap step out"
            },
        }
    end,
}
