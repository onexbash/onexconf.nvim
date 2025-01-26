return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag"
  },
  config = function()
  --   for parser_list in ipairs(BUFFERTYPES) do
  --     for parser in ipairs(parser_list) do
  --       if parser.ts_parser then
  --         table.insert(parser_list, config.parser)
  --       end
  --     end
  --   end
    local treesitter_configs = require("nvim-treesitter.configs")
    treesitter_configs.setup({

    highlight = {
      enable = true
    },
    indent = {
      enable = true
    },
    autotag = {
      enable = true
    },
    -- ensure_installed = parser_list,
    ensure_installed = {
      "asm", -- assembly
      "awk",
      "bash",
      "bicep", -- microsoft IaC language
      "c", 
      "csharp",
      "cpp",
      "css",
      "csv",
      "diff", -- git diff
      "dockerfile",
      "editorconfig",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "go", -- golang
      "gomod", -- golang module files
      "gosum", -- golang checksum files
      "gotmpl", -- golang template files
      "gowork", -- golang workspace files
      "gpg",
      "graphql",
      "hcl",
      "html",
      "hyprlang", -- hyprland
      "ini", -- .ini config files
      "java",
        "javascript",
        "jq",
        "json",
        "jsonc", -- json with comments
        "kdl", -- config language
        "llvm",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "pem", -- .pem certificate files
        "php",
        "powershell",
        "prisma",
        "properties",
        "python",
        "regex",
        "requirements", -- python requirements.txt
        "ruby",
        "rust",
        "scss", 
        "sql",
        "ssh_config",
        "svelte",
        "swift",
        "terraform",
        "tsx",
        "typescript",
        "vim", -- vimrc files
        "vue", -- vue.js
        "xml",
        "yaml",
        "zig"
      },
    })
  end
}
