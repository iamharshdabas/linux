return {
  {
    "iamharshdabas/hyde.nvim",
    dev = true,
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "hyde.nvim" },
    config = function()
      require("hyde").setup_tokyonight()
    end,
  },
}
