return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "catppuccin-mocha",
      colorscheme = "catppuccin-latte",
      -- colorscheme = "sonokai",
      -- colorscheme = "github_dark_dimmed",
      -- colorscheme = "github_dark_default"
    },
  },

  require("plugins.themes.catppuccin"),
  require("plugins.themes.sonokai"),
  require("plugins.themes.github"),
}
