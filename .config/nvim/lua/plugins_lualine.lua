local lualine = {}

lualine.setup = function(plugins)
  table.insert(plugins, {
    'nvim-lualine/lualine.nvim',
    config = function()
      require("lualine").setup({
      })
    end,
    event = { "VeryLazy" },
  })
  return plugins
end

return lualine
