return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          exclude = {
            "node_modules",
            "dist",
            "build",
            "*.lock",
          },
        },

        explorer = {
          hidden = true,
          ignored = true,
          win = {
            list = {
              keys = {
                ["<CR>"] = { { "confirm", "focus_list" } },
              },
            },
          },
        },
      },
    },
  },
}
