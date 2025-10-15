return {
  {
    "lewis6991/satellite.nvim",
    config = function()
      require("satellite").setup({
        current_only = false,
        winblend = 50,
        zindex = 40,
        excluded_filetypes = {},
        width = 2,
        handlers = {
          cursor = {
            enable = true,
            overlap = false,
            priority = 100,
            symbols = { "⎺", "⎻", "⎼", "⎽" },
          },
          search = {
            enable = true,
            overlap = false,
            priority = 90,
          },
          diagnostic = {
            enable = true,
            overlap = true,
            priority = 80,
            signs = { "-", "=", "≡" },
            min_severity = vim.diagnostic.severity.HINT,
          },
          gitsigns = {
            enable = true,
            overlap = false,
            priority = 70,
            signs = {
              add = "│",
              change = "│",
              delete = "-",
            },
          },
          marks = {
            enable = true,
            overlap = false,
            priority = 60,
            show_builtins = false,
            key = "m",
          },
          quickfix = {
            enable = true,
            overlap = false,
            priority = 50,
            signs = { "-", "=", "≡" },
          },
        },
      })
    end,
  },
}
