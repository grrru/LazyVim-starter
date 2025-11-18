return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- 기본적으로 숨김 파일도 보이게
        },
      },
      window = {
        width = 30,
      },
    },
  },
}
