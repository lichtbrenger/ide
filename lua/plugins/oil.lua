return {
    {
        'stevearc/oil.nvim',
        config = function()
            require("oil").setup({
              view_options = {
                  -- Show files and directories that start with "."
                  show_hidden = true,
                },
                restore_win_options = true,  -- Restore window options after closing Oil
                skip_confirm_for_simple_edits = false, -- Skip confirmation for simple actions
                keymaps = {
                  ["g?"] = { "actions.show_help", mode = "n" },
                  ["<CR>"] = "actions.select",
                  ["<C-s>"] = { "actions.select", opts = { vertical = true } },
                  ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
                  ["<C-t>"] = { "actions.select", opts = { tab = true } },
                  ["<C-p>"] = "actions.preview",
                  ["<C-c>"] = { "actions.close", mode = "n" },
                  ["<C-l>"] = "actions.refresh",
                  ["-"] = { "actions.parent", mode = "n" },
                  ["_"] = { "actions.open_cwd", mode = "n" },
                  ["`"] = { "actions.cd", mode = "n" },
                  ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
                  ["gs"] = { "actions.change_sort", mode = "n" },
                  ["gx"] = "actions.open_external",
                  ["C-o"] = { "actions.toggle_hidden", mode = "n" },
                  ["g\\"] = { "actions.toggle_trash", mode = "n" },
                },
            })
        end,
    }
}
