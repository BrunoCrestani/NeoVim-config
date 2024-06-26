require("bruno.remap")
require("bruno.set")
require("bruno.lazyinit")

vim.diagnostic.config({
  virtual_text = true,
  underline = true
})

-- Lua initialization file
vim.g.moonflyTransparent = true

vim.cmd [[ autocmd FileType javascript,typescript lua require'lspconfig'.tsserver.setup{} ]]

print("Welcome to coding paradise")
