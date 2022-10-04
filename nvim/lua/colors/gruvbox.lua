-- vim.cmd("let g:gruvbox_material_background = 'hard'")
vim.cmd("colorscheme gruvbox-material")

require('lualine').setup {
  options = {
    theme = "gruvbox-material"
  }
}
