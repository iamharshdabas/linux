local is_neovide = vim.g.is_neovide or false

return {
  -- white
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = { transparent = not is_neovide },
  },
  -- pink
  {
    "yonatan-perel/lake-dweller.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = not is_neovide,
    },
  },
  -- red
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = not is_neovide,
    },
  },
  -- brown
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = {
        bg = not is_neovide,
        float = not is_neovide,
      },
    },
  },
  -- yellow
  {
    "oskarnurm/koda.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = not is_neovide,
    },
  },
  -- green
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      styles = {
        transparency = not is_neovide,
      },
    },
  },
  -- blue
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = not is_neovide,
      styles = {
        sidebars = is_neovide and "" or "transparent",
        floats = is_neovide and "" or "transparent",
      },
    },
  },
  -- purple
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = { transparent_background = not is_neovide },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "koda-dark",
    },
  },
}
