-- Options
local opts = { noremap = true, silent = true }

-- Move to previous/next
vim.api.nvim_set_keymap('n', '<TAB>',':BufferNext<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-TAB>',':BufferPrevious<CR>', opts)
-- Re-order
vim.api.nvim_set_keymap('n', '<S-Left>',':BufferMovePrevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-Right>',':BufferMoveNext<CR>', opts)
-- Close
vim.api.nvim_set_keymap('n', '<C-w>',':BufferClose<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-w>',':BufferCloseAllButCurrent<CR>', opts)
