-- Smart project-aware formatting
return {
  "stevearc/conform.nvim",
  opts = {
    default_format_opts = {
      timeout_ms = 3000,
      async = false,
      quiet = false,
      lsp_format = "fallback",
    },
    
    formatters_by_ft = {
      javascript = function(bufnr)
        local filename = vim.api.nvim_buf_get_name(bufnr)
        -- Check for Biome first, then Prettier
        if vim.fs.find({ "biome.json" }, { path = filename, upward = true })[1] then
          return { "biome" }
        elseif vim.fs.find({
          ".prettierrc",
          ".prettierrc.json", 
          ".prettierrc.js",
          ".prettierrc.yaml",
          ".prettierrc.yml",
          "prettier.config.js",
          "prettier.config.cjs",
          "prettier.config.mjs",
        }, { path = filename, upward = true })[1] then
          return { "prettier" }
        end
        -- Return empty table if no config found (no formatting)
        return {}
      end,
      
      typescript = function(bufnr)
        local filename = vim.api.nvim_buf_get_name(bufnr)
        if vim.fs.find({ "biome.json" }, { path = filename, upward = true })[1] then
          return { "biome" }
        elseif vim.fs.find({
          ".prettierrc",
          ".prettierrc.json", 
          ".prettierrc.js",
          ".prettierrc.yaml",
          ".prettierrc.yml",
          "prettier.config.js",
          "prettier.config.cjs",
          "prettier.config.mjs",
        }, { path = filename, upward = true })[1] then
          return { "prettier" }
        end
        return {}
      end,
      
      javascriptreact = function(bufnr)
        local filename = vim.api.nvim_buf_get_name(bufnr)
        if vim.fs.find({ "biome.json" }, { path = filename, upward = true })[1] then
          return { "biome" }
        elseif vim.fs.find({
          ".prettierrc",
          ".prettierrc.json", 
          ".prettierrc.js",
          ".prettierrc.yaml",
          ".prettierrc.yml",
          "prettier.config.js",
          "prettier.config.cjs",
          "prettier.config.mjs",
        }, { path = filename, upward = true })[1] then
          return { "prettier" }
        end
        return {}
      end,
      
      typescriptreact = function(bufnr)
        local filename = vim.api.nvim_buf_get_name(bufnr)
        if vim.fs.find({ "biome.json" }, { path = filename, upward = true })[1] then
          return { "biome" }
        elseif vim.fs.find({
          ".prettierrc",
          ".prettierrc.json", 
          ".prettierrc.js",
          ".prettierrc.yaml",
          ".prettierrc.yml",
          "prettier.config.js",
          "prettier.config.cjs",
          "prettier.config.mjs",
        }, { path = filename, upward = true })[1] then
          return { "prettier" }
        end
        return {}
      end,
      
      json = function(bufnr)
        local filename = vim.api.nvim_buf_get_name(bufnr)
        if vim.fs.find({ "biome.json" }, { path = filename, upward = true })[1] then
          return { "biome" }
        elseif vim.fs.find({
          ".prettierrc",
          ".prettierrc.json", 
          ".prettierrc.js",
          ".prettierrc.yaml",
          ".prettierrc.yml",
          "prettier.config.js",
          "prettier.config.cjs",
          "prettier.config.mjs",
        }, { path = filename, upward = true })[1] then
          return { "prettier" }
        end
        return {}
      end,
      
      jsonc = function(bufnr)
        local filename = vim.api.nvim_buf_get_name(bufnr)
        if vim.fs.find({ "biome.json" }, { path = filename, upward = true })[1] then
          return { "biome" }
        elseif vim.fs.find({
          ".prettierrc",
          ".prettierrc.json", 
          ".prettierrc.js",
          ".prettierrc.yaml",
          ".prettierrc.yml",
          "prettier.config.js",
          "prettier.config.cjs",
          "prettier.config.mjs",
        }, { path = filename, upward = true })[1] then
          return { "prettier" }
        end
        return {}
      end,
      
      -- Keep your existing non-JS formatters
      vue = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      html = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      graphql = { "prettier" },
    },

    formatters = {
      -- Keep existing prettier condition
      prettier = {
        condition = function(ctx)
          return vim.fs.find({
            ".prettierrc",
            ".prettierrc.json", 
            ".prettierrc.js",
            ".prettierrc.yaml",
            ".prettierrc.yml",
            "prettier.config.js",
            "prettier.config.cjs",
            "prettier.config.mjs",
          }, { path = ctx.filename, upward = true })[1]
        end,
      },
      
      -- Add biome formatter
      biome = {
        condition = function(ctx)
          return vim.fs.find({ "biome.json" }, { path = ctx.filename, upward = true })[1]
        end,
      },
    },
  },
}
