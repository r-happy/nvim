--return {
--  {
--    "olimorris/onedarkpro.nvim",
--    priority = 1000, -- Ensure it loads first
--  },
--}
return {
  -- add dracula

  { "Mofiqul/dracula.nvim" },

  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
