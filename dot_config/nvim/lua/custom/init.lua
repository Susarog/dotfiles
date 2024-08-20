local opt = vim.opt

-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

opt.numberwidth = 4

opt.relativenumber = true

-- folds
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

if vim.g.neovide then
  vim.g.neovide_scale_factor = 0.75

  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  vim.g.neovide_scroll_animation_length = 0.15

  vim.g.neovide_scroll_animation_far_lines = 1

  vim.g.neovide_theme = "auto"

  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_cursor_animation_length = 0.03
  vim.g.neovide_cursor_trail_size = 0.8

  vim.g.neovide_cursor_antialiasing = true

  vim.g.neovide_cursor_animate_in_insert_mode = true
end
