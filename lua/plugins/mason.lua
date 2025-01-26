return {
  "williamboman/mason.nvim",
  config = function()
  local mason = require("mason")
      -- mason setup needs to be called before mason-lspconfig
      -- this is ensured because mason is listed as dependency for mason-lspconfig (see: lsp.lua)
      mason.setup()
  end,
}
