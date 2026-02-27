return {
    {
        'echasnovski/mini.icons',
        version = false,
        lazy = false,
        priority = 1001,
        config = function()
            require("mini.icons").setup({})
            require("mini.icons").mock_nvim_web_devicons()
        end,
    },
    { "nvim-tree/nvim-web-devicons", enabled = false },
}
