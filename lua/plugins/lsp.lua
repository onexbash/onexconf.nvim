return {
  -- mason
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { 
	"williamboman/mason.nvim"
	-- "hrsh7th/cmp-nvim-lsp" 
},
    event = { "VimEnter" },
    config = function()
      local mason_lsp = require("mason-lspconfig")
      mason_lsp.setup({
        automatic_installation = true,
        ensure_installed = { "lua_ls", "ts_ls" }
      })
    end

  },
  -- lspconfig
  {
  "neovim/nvim-lspconfig",
  event = { "BufEnter", "BufReadPre" },
  cmd = { "LspInfo", "LspInstall", "LspUninstall" },
  config = function()
    local lspconfig = require("lspconfig")
      -- -- -- -- -- -- --  -- -- -- --
      --  LSPCONFIG: setup function  --
      -- -- -- -- -- -- --  -- -- -- --
      local function lsp_setup(server_name, opts)
        local default_opts = {
          on_attach = function(client, bufnr)
            print("LSP attached: " .. server_name)
          end,
        }
        opts = vim.tbl_deep_extend("force", default_opts, opts or {})
        lspconfig[server_name].setup(opts)
      end
      -- -- -- -- -- -- -- -- -- -- --
      --  LSPCONFIG: default setup  --
      -- -- -- -- -- -- -- -- -- -- --
      for _, language in pairs(LANG_CONFIG) do
        local server_name = language.lsp_server
        if lspconfig[server_name] then
          lsp_setup(server_name)
      else
        print("ERR: no lspconfig for" .. server_name .. "available.")
        print("check out how to add a custom language server config --> :h lspconfig-new")
      end
    end
      -- -- -- -- -- -- -- -- -- --
      -- LSPCONFIG: custom setup --
      -- -- -- -- -- -- -- -- -- --
      -- lua
      lsp_setup("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim", "LANG_CONFIG" }
            }
          },
        },
      })
      -- typescript
      lsp_setup("ts_ls", {
      })
  end
  },
}
