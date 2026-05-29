require("config.lazy")

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'bash', 'lua', 'python' },
  callback = function() vim.treesitter.start() end,
})
