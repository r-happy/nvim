return {
  -- nvim-cmpと関連プラグインをここにすべてまとめる
  {
    "hrsh7th/nvim-cmp",
    -- `InsertEnter`のタイミングで読み込む
    event = "InsertEnter",
    -- nvim-cmpが依存するプラグインのリスト
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP補完ソース
      "neovim/nvim-lspconfig", -- LSP本体もここに含める
      -- 他にもcmpで使うプラグインがあればここに追加する
      -- "hrsh7th/cmp-buffer",
      -- "hrsh7th/cmp-path",
      -- "L3MON4D3/LuaSnip",
      -- "saadparwaiz1/cmp_luasnip",
    },
    -- プラグインが読み込まれた後に実行する設定
    config = function()
      local cmp = require("cmp")
      local lspconfig = require("lspconfig")
      -- cmp-nvim-lspからLSP用のcapabilitiesを取得する
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- nvim-cmpのセットアップ
      cmp.setup({
        -- ここにスニペットやマッピングなどの設定を追加していく
        -- 例:
        -- sources = cmp.config.sources({
        --   { name = 'nvim_lsp' },
        --   { name = 'luasnip' },
        -- }, {
        --   { name = 'buffer' },
        -- })
      })

      -- LSPサーバーのセットアップ
      -- capabilitiesを各サーバーに渡す
      lspconfig.gopls.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities }) -- `ts_ls`より`tsserver`が一般的です
    end,
  },
}
