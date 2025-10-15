return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",  -- 現在の colorscheme に合わせる
                    globalstatus = true, -- ステータスラインを1つに統合
                    component_separators = "", -- ← Powerline セパレーターを削除
                    section_separators = "", -- ← Powerline セパレーターを削除
                    icons_enabled = true, -- devicons のカラーアイコンはそのまま
                },
                sections = {
                    lualine_a = { "mode" },
                    lualine_b = { "branch", "diff", "diagnostics" },
                    lualine_c = {
                        {
                            "filename",
                            file_status = true, -- [+] 修正済み, [-] 読み取り専用
                            path = 1, -- 相対パス表示
                            symbols = { modified = "●", readonly = "" },
                        },
                    },
                    lualine_x = { "encoding", "fileformat", "filetype" },
                    lualine_y = { "progress" },
                    lualine_z = {
                        "location",
                        {
                            function()
                                return os.date("%H:%M")
                            end,
                        },
                    },
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = { "filename" },
                    lualine_x = {},
                    lualine_y = {},
                    lualine_z = {},
                },
            })
        end,
    },
}
