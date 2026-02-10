return {
     {
       "williamboman/mason.nvim",
        cmd = "Mason",
        keys = { { "<cmd>Mason<cr>", desc = "Mason" } },
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            ensure_installed = { "lua_ls" },
            automatic_enable = true,
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
}
