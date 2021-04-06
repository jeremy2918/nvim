local function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Set leader key
vim.g.mapleader = " "

-- Prevert x and d to replace clipboard
vim.api.nvim_set_keymap('n', 'x', '"_x', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'X', '"_x', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', '<C-k>', ":move '<-2<CR>gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', '<C-j>', ":move '>+1<CR>gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', ':m .-2<CR>==', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', ':m .+1<CR>==', {noremap = true, silent = true})

-- Move up and down x10 faster
vim.api.nvim_set_keymap('n', '<S-j>', '10j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-k>', '10k', {noremap = true, silent = true})

-- Shortcuts
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-w>', ':bd<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-c>', ':set spell! spelllang=en_us<CR>', {noremap = true, silent = true})

-- Better Navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

-- open terminals
map("n", "<C-b>" , [[<Cmd> vnew term://bash<CR>]] , opt) -- split term vertically , over the right
map("n", "<C-x>" , [[<Cmd> split term://bash | resize 10 <CR>]] , opt) -- split term vertically , over the right
