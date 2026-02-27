return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "LazyFile",
    opts = {
      mode = "cursor", -- 'cursor' 'topline'
      max_lines = 2,
      trim_scope = "inner",
    },
  },
  {
    "Bekaboo/dropbar.nvim",
    -- optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    config = function()
      local dropbar_api = require("dropbar.api")
      vim.keymap.set("n", "<Leader>;", dropbar_api.pick, { desc = "Pick symbols in winbar" })
      vim.keymap.set("n", "[;", dropbar_api.goto_context_start, { desc = "Go to start of current context" })
      vim.keymap.set("n", "];", dropbar_api.select_next_context, { desc = "Select next context" })
    end,
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      plugins = {
        tmux = { enabled = true },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_c = {
        {
          "filename",
          file_statusus = true,
          path = 0,
        },
      }
    end,
  },
  {
    "akinsho/bufferline.nvim",
    opts = function(_, opts)
      opts.options.indicator = {
        style = "none",
      }
      -- opts.options.separator_style = "slant"

      opts.options.diagnostics_indicator = function(_, _, diag)
        local icons = LazyVim.config.icons.diagnostics
        if diag.error then
          return " " .. icons.Error .. diag.error
        end
        return ""
      end

      opts.options.always_show_bufferline = true
      opts.options.show_buffer_close_icons = false
      opts.options.show_close_icon = false
      opts.options.max_name_length = 30
    end,
  },
}
