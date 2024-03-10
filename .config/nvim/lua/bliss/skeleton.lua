vim.api.nvim_exec([[
  autocmd BufNewFile *.html 0r ~/.config/nvim/skeletons/index.html
]], false)

