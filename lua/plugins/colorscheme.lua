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
  --       style = "dark",
  --     })
  --
  --     -- Enable theme
  --     require("onedark").load()
  --   end,
  -- },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
}
