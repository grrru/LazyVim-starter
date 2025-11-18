return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    event = "LazyFile", -- 파일 열렸을 때 로드 (그냥 두면 됨)
    config = function()
      local rd = require("rainbow-delimiters")

      ---@type rainbow_delimiters.config
      vim.g.rainbow_delimiters = {
        -- 어느 범위까지 하이라이트할지 전략
        strategy = {
          [""] = rd.strategy["global"], -- 대부분 파일
        },
        -- 어떤 쿼리를 쓸지 (언어별로 다르게도 가능)
        query = {
          [""] = "rainbow-delimiters",
          lua = "rainbow-blocks",
        },
        -- 우선순위 (다른 하이라이트와 겹칠 때)
        priority = {
          [""] = 110,
          lua = 210,
        },
        highlight = {
          "RainbowDelimiterYellow",
          "RainbowDelimiterOrange",
          "RainbowDelimiterBlue",
        },
      }
    end,
  },
}
