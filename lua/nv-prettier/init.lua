-- Format on save
vim.api.nvim_exec([[augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END]], true)