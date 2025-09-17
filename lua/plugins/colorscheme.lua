return {
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.cmd("colorscheme gruvbox-material")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}

-- return {
--   {
--     "scottmckendry/cyberdream.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require("cyberdream").setup({
--         transparent = true,
--       })
--
--       vim.cmd.colorscheme("cyberdream")
--
--       vim.cmd([[
--         highlight Normal guibg=NONE ctermbg=NONE
--         highlight NormalNC guibg=NONE ctermbg=NONE
--       ]])
--     end,
--   },
-- }
