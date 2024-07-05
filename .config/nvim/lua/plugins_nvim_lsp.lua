local nvim_lsp = {}

nvim_lsp.setup = function(plugins)

  table.insert(plugins, {
    "neovim/nvim-lspconfig",
    lazy = true,
    config = function() 
      require("nvim_lsp_cfg")
    end,
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    dependencies = {
		  { "williamboman/mason.nvim" } ,
		  { "williamboman/mason-lspconfig.nvim" },
      { "j-hui/fidget.nvim",
        config = function()
          require("fidget").setup()
        end
      },
	  },
  })
  -- -- lspsage.nvim
  -- table.insert(plugins, {
  --   "glepnir/lspsaga.nvim",
  --   branch = "main",
  --   config = function()
  --     require('lspsaga_cfg')
  --   end,
  --   dependencies = {
  --     { "nvim-tree/nvim-web-devicons" },
  --   },
  --   lazy=true,
  --   event = { "BufReadPost", "BufAdd", "BufNewFile" },
  -- })
 
  return plugins
end

return nvim_lsp
