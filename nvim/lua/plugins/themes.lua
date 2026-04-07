return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "hyde.nvim" },
    opts = function()
      return vim.tbl_deep_extend(
        "force",
        require("hyde").tokyonight_opts({
          neovide = vim.g.neovide or false,
        }),
        {
          on_colors = function(colors)
            require("hyde.palette").apply_tokyonight(colors)
          end,
        }
      )
    end,
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
