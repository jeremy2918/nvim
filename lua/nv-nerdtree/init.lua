-- Mapping
vim.api.nvim_set_keymap("n", "<C-n>", ":NERDTreeToggle<CR>", {noremap = true, silent = true})

-- Autoclose if its the last open buffer
vim.api.nvim_exec('autocmd BufEnter * if tabpagenr(\'$\') == 1 && winnr(\'$\') == 1 && exists(\'b:NERDTree\') && b:NERDTree.isTabTree() | quit | endif', true)

-- If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree
vim.api.nvim_exec([[autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif]], true)

-- Icons
vim.g.NERDTreeDirArrowExpandable = ''
vim.g.NERDTreeDirArrowCollapsible = ''

-- Git icons
vim.g.NERDTreeGitStatusUseNerdFonts = 1

