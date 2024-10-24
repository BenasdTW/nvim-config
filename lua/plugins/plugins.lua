
-- Create the autocmd group for autosave
local group = vim.api.nvim_create_augroup('autosave', {})

-- Disable auto notification
-- Create an autocmd for AutoSaveWritePost event
vim.api.nvim_create_autocmd('User', {
    pattern = 'AutoSaveWritePost',
    group = group,
    callback = function(_) end,
})

return {
  {
    "amitds1997/remote-nvim.nvim",
    version = "*", -- Pin to GitHub releases
    dependencies = {
      "nvim-lua/plenary.nvim", -- For standard functions
      "MunifTanjim/nui.nvim", -- To build the plugin UI
      "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
    },
    config = true,
  },
  {
    "okuuva/auto-save.nvim",
    config = function()
      require("auto-save").setup {
        enabled = true, -- enable auto-save
      }
    end
  },
}

