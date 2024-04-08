require("bruno.remap")
require("bruno.set")
require("bruno.lazyinit")

-- Lua initialization file
vim.g.moonflyTransparent = true

vim.cmd [[ autocmd FileType javascript,typescript lua require'lspconfig'.tsserver.setup{} ]]

print("Welcome to coding paradise")
