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
  },
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').install({
        "bash",
        "lua",
        "python"
      })
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'bash', 'lua', 'python' },
        callback = function() vim.treesitter.start() end,
      })
    end
  },
}
