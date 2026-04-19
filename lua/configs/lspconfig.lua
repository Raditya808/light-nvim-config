-- 1. Load default NvChad
pcall(require, "nvchad.configs.lspconfig")

local nvlsp = require "nvchad.configs.lspconfig"
local ok, lspconfig = pcall(require, "lspconfig")

if not ok then return end

-- 2.lenguage without ruuff support 
local servers = { 
  "html", "cssls", "ts_ls", "clangd", 
  "pyright", "jdtls", "rust_analyzer", 
  "gopls", "intelephense", "emmet_ls" 
}

-- 3. Looping Setup
for _, lsp in ipairs(servers) do
  local opts = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }

  -- hypertext for flask set uuup 
  if lsp == "html" or lsp == "emmet_ls" then
    opts.filetypes = { "html", "python", "jinja.html", "htmldjango" }
  end

  lspconfig[lsp].setup(opts)
end