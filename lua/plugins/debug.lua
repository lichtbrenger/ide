return {
    -- Make sure debugpy is installed e.g. pip install debugpy
    "mfussenegger/nvim-dap",
    dependencies = {
    -- Creates a beautiful debugger UI
    'rcarriga/nvim-dap-ui',

    -- Required dependency for nvim-dap-ui
    'nvim-neotest/nvim-nio',
    },
    config = function()
        local dap = require 'dap'
        local dapui = require 'dapui'


        -- Example configuration for debugging Python
        dap.adapters.python = {
            type = "executable",
            command = "python3",
            args = { "-m", "debugpy.adapter" },
        }

        dap.configurations.python = {
            {
                type = "python",
                request = "launch",
                name = "Launch file",
                program = "${file}", -- Launch the current file
                pythonPath = function()
                    return "/usr/bin/python3" -- Adjust for your Python path
                end,
            },
        }

      dapui.setup {
      -- Set icons to characters that are more likely to work in every terminal.
      --    Feel free to remove or use ones that you like more! :)
      --    Don't feel like these are good choices.
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    }

    -- Change breakpoint icons
    -- vim.api.nvim_set_hl(0, 'DapBreak', { fg = '#e51400' })
    -- vim.api.nvim_set_hl(0, 'DapStop', { fg = '#ffcc00' })
    -- local breakpoint_icons = vim.g.have_nerd_font
    --     and { Breakpoint = '', BreakpointCondition = '', BreakpointRejected = '', LogPoint = '', Stopped = '' }
    --   or { Breakpoint = '●', BreakpointCondition = '⊜', BreakpointRejected = '⊘', LogPoint = '◆', Stopped = '⭔' }
    -- for type, icon in pairs(breakpoint_icons) do
    --   local tp = 'Dap' .. type
    --   local hl = (type == 'Stopped') and 'DapStop' or 'DapBreak'
    --   vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl })
    -- end

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close


        -- Keybindings for DAP
        vim.keymap.set("n", "<F5>", dap.continue, { desc = "Continue Debugging" })
        vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Step Over" })
        vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Step Into" })
        vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Step Out" })
        vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
        vim.keymap.set("n", "<leader>B", function()
            dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
        end, { desc = "Set Conditional Breakpoint" })
        vim.keymap.set("n", "<leader>lp", function()
            dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
        end, { desc = "Set Log Point" })
        vim.keymap.set("n", "<leader>dr", dap.repl.open, { desc = "Open REPL" })
        vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run Last Debugging Session" })
    end,
}
