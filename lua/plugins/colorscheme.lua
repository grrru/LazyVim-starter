return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin-mocha",
      -- colorscheme = "catppuccin-latte",
      colorscheme = "sonokai",
    },
  },

  require("plugins.themes.catppuccin"),
  require("plugins.themes.sonokai"),
  require("plugins.themes.github"),
}
