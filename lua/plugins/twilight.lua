return {
    {
   'folke/twilight.nvim',
   opts = {
          dimming = {
              alpha = 0.10, -- Amount of dimming
              color = { "Normal", "#ffffff" }, -- Fallback color
              term_bg = "#000000", -- Used if guibg=NONE
              inactive = false, -- Fully dim inactive windows
          },
          context = 10, -- Number of lines around the cursor
          treesitter = true, -- Use Tree-Sitter for context
          expand = { -- Nodes to always expand
              "function",
              "method",
              "table",
              "if_statement",
          },
          exclude = {}, -- Filetypes to exclude
    }
    }
}
