return {
        'folke/tokyonight.nvim',
        lazy = false, -- Load immediately (not lazily)
        priority = 1000, -- Ensure it loads before other colorschemes
        config = function()
            -- Configure TokyoNight
            require("tokyonight").setup({
                style = "storm", -- Options: "storm", "night", "moon", or "day"
                transparent = false, -- Disable/Enable transparent background
                terminal_colors = true, -- Apply theme to Neovim terminal
                styles = {
                    comments = { italic = true },
                    keywords = { italic = false },
                    functions = { bold = true },
                    variables = {},
                    sidebars = "dark", -- Darker background for sidebar-like elements
                    floats = "dark", -- Darker background for floating windows
                },
                -- Additional settings
                dim_inactive = true, -- Dim inactive windows
                lualine_bold = true, -- Bold text in lualine
            })
            -- Apply the colorscheme
            vim.cmd("colorscheme tokyonight")
        end,
}
