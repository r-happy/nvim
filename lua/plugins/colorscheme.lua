--return {
--  {
--    "olimorris/onedarkpro.nvim",
--    priority = 1000, -- Ensure it loads first
--  },
--}
-- return {
--   -- add dracula
--
--   { "Mofiqul/dracula.nvim" },
--
--   -- Configure LazyVim to load dracula
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "dracula",
--     },
--   },
-- }
-- lua/plugins/rose-pine.lua

-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     vim.cmd("colorscheme rose-pine")
--   end,
-- }

-- Using Lazy
return {
  -- {
  --   "navarasu/onedark.nvim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require("onedark").setup({
  --       style = "warm",
  --     })
  --
  --     -- Enable theme
  --     require("onedark").load()
  --   end,
  -- },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.cmd.colorscheme("gruvbox-material")
      vim.go.background = "light"
    end,
  },
}
