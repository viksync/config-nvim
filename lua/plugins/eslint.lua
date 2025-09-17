-- Smart project-aware linting  
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Biome LSP - only activates when biome.json exists
        biome = {
          -- Use nvim-lspconfig's newer root_dir function pattern
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("biome.json")(fname)
          end,
          single_file_support = false, -- Project-only mode
        },
        
        -- ESLint LSP - only activates when eslint config exists  
        eslint = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "eslint.config.js",
              "eslint.config.mjs",
              "eslint.config.cjs", 
              ".eslintrc.json",
              ".eslintrc.js",
              ".eslintrc.cjs",
              ".eslintrc.yaml",
              ".eslintrc.yml"
            )(fname)
          end,
          single_file_support = false, -- Project-only mode
          settings = {
            workingDirectories = { mode = "auto" },
          },
        },
      },
      
      setup = {
        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            if client.name == "eslint" then
              client.server_capabilities.documentFormattingProvider = true
            elseif client.name == "vtsls" then
              client.server_capabilities.documentFormattingProvider = false
            end
          end)
        end,
        
        -- Ensure Biome doesn't conflict with other formatters
        biome = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            if client.name == "biome" then
              -- Biome handles both linting and formatting
              client.server_capabilities.documentFormattingProvider = true
            end
          end)
        end,
      },
    },
  },
}
