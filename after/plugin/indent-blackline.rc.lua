vim.opt.list = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#3B4252 gui=nocombine]]

require("indent_blankline").setup {
    show_end_of_line = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
    }
}
