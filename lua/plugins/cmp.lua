return {
  -- 1. Copilotの本体（認証やコア機能を提供）
  {
    "github/copilot.vim",
    -- 起動時にすぐ読み込まず、コマンドが呼ばれた時などに遅延読み込みする
    cmd = "Copilot",
    event = "VeryLazy",
  },

  -- 2. nvim-cmp（補完ウィンドウUIを提供）と、それに関連するプラグイン
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
      -- スニペットエンジン
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",

      -- Copilotの補完をnvim-cmpに表示するための「ブリッジ」プラグイン
      "zbirenbaum/copilot-cmp",

      -- その他の補完ソース
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      local cmp = require("cmp")

      -- copilot-cmpの設定を呼び出す
      require("copilot_cmp").setup()

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
        }),
        -- 補完ソースのリスト
        sources = cmp.config.sources({
          { name = "copilot" },
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}
