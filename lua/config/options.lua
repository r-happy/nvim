-- cursor
vim.opt.cursorcolumn = true
vim.opt.cursorline = true

-- indent
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.copyindent = true
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

-- number
vim.opt.number = true

-- autoread
vim.opt.autoread = true

-- line
vim.opt.wrap = false
vim.opt.wildmenu = true

-- clipboard
vim.opt.clipboard = "unnamedplus"
-- for wsl
vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
        ["+"] = 'clip.exe',
        ["*"] = 'clip.exe',
    },
    paste = {
        ["+"] = 'powershell.exe -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        ["*"] = 'powershell.exe -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
}

-- color
vim.opt.termguicolors = true

-- scroll
vim.opt.scrolloff = 10

-- buffer
vim.opt.hidden = true
vim.opt.autowriteall = true
vim.opt.swapfile = false

-- cmd
vim.opt.showcmd = true

-- leader
vim.g.mapleader = " "

-- color
vim.cmd("colorscheme kanagawa-wave")

-- plugins
local disabled_builtins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit",
}

for _, plugin in ipairs(disabled_builtins) do
    vim.g["loaded_" .. plugin] = 1
end
