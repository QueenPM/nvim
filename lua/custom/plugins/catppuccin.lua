vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }

require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
  term_colors = true,
  integrations = {
    neo_tree = true,
    indent_blankline = {
      enabled = true,
      scope_color = "maroon",
    },
    native_lsp = { enabled = true },
  },

  highlight_overrides = {
    mocha = function(cp)
      return {
        NeoTreeDirectoryName = { fg = cp.maroon, bold = true },
        NeoTreeDirectoryIcon = { fg = cp.maroon },
        Directory = { fg = cp.maroon, bold = true },
        CursorLineNr = { fg = cp.maroon, bold = true },
        LineNr = { fg = cp.overlay1 },
        FloatBorder = { fg = cp.maroon },
        Statement = { fg = cp.maroon },
        PreProc = { fg = cp.maroon },
        Comment = { fg = "#C7A9AE", italic = true }
      }
    end,
  },
})
vim.cmd.colorscheme "catppuccin-nvim"
