-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  vim.o.guifont = "Hack Nerd Font:h14"  -- Set FiraCode Italic with size 16
end
