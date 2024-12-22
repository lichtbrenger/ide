return {
	{'folke/noice.nvim',
	version = "*",
  config = function()
            require("noice").setup({
                cmdline = {
                    enabled = true, -- enables the custom command line UI
                    view = "cmdline_popup", -- choose a view (popup, mini, etc.)
                    format = {
                        cmdline = {
                            icon = ">_ ", -- Customize the icon or prefix for your prompt
                            opts = { border = "solid" },
                        },
                        search_down = { icon = "🔍↓" },
                        search_up = { icon = "🔍↑" },
                        filter = { icon = "$" },
                    },
                },
                messages = {
                    enabled = true, -- enable notifications
                },
                popupmenu = {
                    enabled = true, -- enables a popup menu for command suggestions
                },
            })
        end,
  }
}
