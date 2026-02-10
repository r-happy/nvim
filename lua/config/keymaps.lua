vim.keymap.set(
    'n',
    '<leader>e',
    function() vim.cmd("Oil") end,
    { desc = "Open Oil" }
)

-- snacks
vim.keymap.set(
    'n',
    'sf',
    function() Snacks.picker.smart() end,
    { desc = "picker smart" }
)
vim.keymap.set(
    'n',
    'se',
    function() Snacks.picker.explorer() end,
    { desc = "picker smart" }
)
vim.keymap.set(
    'n',
    'spr',
    function() Snacks.picker.recent() end,
    { desc = "picker recent files" }
)
vim.keymap.set(
    'n',
    'spg',
    function() Snacks.picker.grep() end,
    { desc = "picker recent files" }
)

-- flash
vim.keymap.set(
    'n',
    '<Enter>',
    function() require("flash").jump() end,
    { desc = "Flash" }
)

-- lsp
vim.keymap.set(
    'n',
    'K',
    function() vim.lsp.buf.hover() end,
    { desc = "LSP Hover" }
)

-- lazygit
vim.keymap.set(
    "n",
    "sg",
    function() Snacks.lazygit() end,
    { desc = "Snacks: LazyGit" }
)

-- terminal
vim.keymap.set(
    { "n", "t" },
    "<C-\\>",
    function()
        Snacks.terminal.toggle(nil, {
            win = { position = "float" }
        })
    end, { desc = "Snacks: Toggle Main Terminal" }
)
