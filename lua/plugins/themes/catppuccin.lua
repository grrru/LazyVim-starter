return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "latte",
    transparent_background = false,
    highlight_overrides = {
      latte = function(colors)
        return {
          NeoTreeCursorLine = { bg = colors.surface0 },
        }
      end,
    },
    term_colors = true,
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin-latte")
  end,
}
