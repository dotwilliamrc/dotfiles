local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}

require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}

require'lspconfig'.jsonls.setup {
  capabilities = capabilities,
}


require'lspconfig'.eslint.setup{
}

require'lspconfig'.tsserver.setup{
  
  handlers = {
    ['textDocument/publishDiagnostics'] = function(...) end
  }
}

 require'lspconfig'.pyright.setup{
 }

 require'lspconfig'.emmet_ls.setup{
 }

 --angular
 require'lspconfig'.angularls.setup{}
