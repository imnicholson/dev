local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- split windows
keymap('n', '<leader>v', ':vsplit<CR>', {})
keymap('n', '<leader>s', ':split<CR>', {})

-- window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- window resize
keymap('n', '<C-UP>', ':resize -2<CR>', opts)
keymap('n', '<C-DOWN>', ':resize +2<CR>', opts)
keymap('n', '<C-LEFT>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-RIGHT>', ':vertical resize +2<CR>', opts)

-- telescope
keymap('n', '<leader>ff', ':Telescope find_files<CR>', {})
keymap('n', '<leader>fg', ':Telescope live_grep<CR>', {})
keymap('n', '<leader>fb', ':Telescope buffers<CR>', {})
keymap('n', '<leader>fh', ':Telescope help_tags<CR>', {})

-- move text up/down
keymap('n', '<A-j>', ":MoveLine(1)<CR>", { noremap = true, silent = true })
keymap('n', '<A-k>', ":MoveLine(-1)<CR>", { noremap = true, silent = true })
keymap('v', '<A-j>', ":MoveBlock(1)<CR>", { noremap = true, silent = true })
keymap('v', '<A-k>', ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
keymap('n', '<A-l>', ":MoveHChar(1)<CR>", { noremap = true, silent = true })
keymap('n', '<A-h>', ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
keymap('v', '<A-l>', ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
keymap('v', '<A-h>', ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })

-- lsp
keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", {}) --> jumps to the definition of the symbol under the cursor
keymap("n", "<leader>lh", ":lua vim.lsp.buf.hover()<CR>", {}) --> information about the symbol under the cursos in a floating window
keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", {}) --> lists all the implementations for the symbol under the cursor in the quickfix window
keymap("n", "<leader>rn", ":lua vim.lsp.util.rename()<CR>", {}) --> renaname old_fname to new_fname
keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", {}) --> selects a code action available at the current cursor position
keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", {}) --> lists all the references to the symbl under the cursor in the quickfix window
keymap("n", "<leader>ld", ":lua vim.diagnostic.open_float()<CR>", {})
keymap("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", {})
keymap("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", {})
keymap("n", "<leader>lq", ":lua vim.diagnostic.setloclist()<CR>", {})
keymap("n", "<leader>lf", ":lua vim.lsp.buf.formatting()<CR>", {}) --> formats the current buffer
