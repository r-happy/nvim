return {
    {
        "hrsh7th/nvim-cmp",
        priority = 100, -- Give it high priority to load early
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                -- Your cmp configuration here
                -- For example:
                sources = {
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                    { name = "path" },
                    -- Don't add copilot source here, it will be added by copilot-cmp
                },
                mapping = cmp.mapping.preset.insert({
                    -- Your key mappings
                }),
                -- Other settings
            })
        end,
        opts = function(_, opts)
            table.insert(opts.sources, 1, {
                name = "copilot",
                group_index = 1,
                priority = 100,
            })
        end,
        dependencies = {
            -- Add cmp dependencies if any
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lsp",
        },
    },
}
