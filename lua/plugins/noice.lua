return {
    'folke/noice.nvim',
    version = "*",
    dependencies = {
        "MunifTanjim/nui.nvim",  
        "rcarriga/nvim-notify",
    },
    config = function()
        require("noice").setup({
            cmdline = {
                enabled = true,
                view = "cmdline_popup",
                format = {
                    cmdline = {
                        icon = ">_ ",
                        opts = { border = "solid" },
                    },
                    search_down = { icon = "🔍↓" },
                    search_up = { icon = "🔍↑" },
                    filter = { icon = "$" },
                },
            },
            messages = {
                enabled = true,
            },
            popupmenu = {
                enabled = true,
            },
        })
    end,
}
