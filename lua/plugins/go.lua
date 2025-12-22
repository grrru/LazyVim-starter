return {
  -- Stop installing golangci-lint when using the Go extra
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      if not opts.ensure_installed then
        return
      end
      opts.ensure_installed = vim.tbl_filter(function(tool)
        return tool ~= "golangci-lint"
      end, opts.ensure_installed)
    end,
  },
  -- Remove golangci-lint from nvim-lint so it is not run
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      if not opts.linters_by_ft then
        return
      end
      local go_linters = opts.linters_by_ft.go
      if not go_linters then
        return
      end
      opts.linters_by_ft.go = vim.tbl_filter(function(linter)
        return linter ~= "golangcilint"
      end, go_linters)
      if #opts.linters_by_ft.go == 0 then
        opts.linters_by_ft.go = nil
      end
    end,
  },
  -- Disable staticcheck in gopls (it is enabled by default in the Go extra)
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.gopls = opts.servers.gopls or {}
      opts.servers.gopls.settings = opts.servers.gopls.settings or {}
      local gopls_settings = opts.servers.gopls.settings.gopls or {}
      gopls_settings.staticcheck = false
      opts.servers.gopls.settings.gopls = gopls_settings
    end,
  },
}
