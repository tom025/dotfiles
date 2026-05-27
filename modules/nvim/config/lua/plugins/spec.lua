return {
  {
    "wincent/base16-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme solarized-light]])
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "bashls" },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  }
}
