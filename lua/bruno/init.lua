require("bruno.remap")
require("bruno.set")

-- Automatically start LSP server for JavaScript files
vim.cmd [[ autocmd FileType javascript,typescript lua require'lspconfig'.tsserver.setup{} ]]

print("Welcome to coding paradise")
