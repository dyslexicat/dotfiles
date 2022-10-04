local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

map("", "<leader>qq", ":confirm qall<CR>", { noremap = true })
map("", "<leader>cc", ":BufferCloseAllButCurrent<CR>", { noremap = true })
-- Quick-save
map("n", "<leader>w", ":w<CR>", { noremap = false })
-- Turn the word under cursor to uppercase
map("n", "<c-u>", "<Esc>g~iw<Esc>", { noremap = true })
map("i", "<c-u>", "<Esc>g~iw<Esc>ea", { noremap = true })
-- Turn the current word into title case
map("n", "<c-t>", "<Esc>b~lea<Esc>", { noremap = true })

-- Open new file adjacent to current file
map("n", "<leader>o", ':e <C-R>=expand("%:p:h) . "/" <CR>', { noremap = true })
-- Left and right can switch buffers
-- map('n', '<left>', ':bp<CR>', { noremap = true })
-- map('n', '<right>', ':bn<CR>', { noremap = true })

-- <leader><leader> toggles between buffers
map("n", "<leader><leader>", "<c-^>", { noremap = true })

map("i", "<c-\\>", "<ESC>o", { noremap = true })
-- jk sends an ESC command
map("i", "jk", "<ESC>", { noremap = true })
map("i", "<C-c>", "<ESC>", { noremap = true })

-- move inside a single long line
map("n", "j", "gj", { noremap = true })
map("n", "k", "gk", { noremap = true })

map("n", "<C-e>", "$", { noremap = true })
map("n", "<leader>;", ":Buffers<CR>", { noremap = false })

-- Cycle through splits.
map("n", "<S-Tab>", "<C-w>w", { noremap = true })

map("", "<leader>ff", ":Telescope find_files<CR>", { noremap = false })
map("", "<leader>fg", ":Telescope live_grep<CR>", { noremap = false })

-- Move lines
map("n", "<C-j>", ":m .+1<CR>==", { noremap = true })
map("n", "<C-k>", ":m .-2<CR>==", { noremap = true })
map("v", "<C-j>", ":m '>+1<CR>gv=gv", { noremap = true })
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { noremap = true })

-- Search results centered please
map("n", "n", "nzz", opts)
map("n", "N", "Nzz", opts)
map("n", "*", "*zz", opts)
map("n", "#", "#zz", opts)
map("n", "g*", "g*zz", opts)

map("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>rr", ":PackerSync<CR>", opts)
map("n", "<leader>r", ":luafile %<CR>", opts)

-- barbar.nvim config --
-- Move to previous/next
map("n", "<leader>,", ":BufferPrevious<CR>", opts)
map("n", "<leader>.", ":BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<leader><", ":BufferMovePrevious<CR>", opts)
map("n", "<leader>>", " :BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<leader>1", ":BufferGoto 1<CR>", opts)
map("n", "<leader>2", ":BufferGoto 2<CR>", opts)
map("n", "<leader>3", ":BufferGoto 3<CR>", opts)
map("n", "<leader>4", ":BufferGoto 4<CR>", opts)
map("n", "<leader>5", ":BufferGoto 5<CR>", opts)
map("n", "<leader>6", ":BufferGoto 6<CR>", opts)
map("n", "<leader>7", ":BufferGoto 7<CR>", opts)
map("n", "<leader>8", ":BufferGoto 8<CR>", opts)
map("n", "<leader>9", ":BufferGoto 9<CR>", opts)
map("n", "<leader>0", ":BufferLast<CR>", opts)
-- Close buffer
map("n", "<leader>c", ":BufferClose<CR>", opts)
-- Sort automatically by...
map("n", "<Space>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", ":BufferOrderByLanguage<CR>", opts)

map("n", "<leader>za", ":TZAtaraxis<CR>", opts)

map("n", "<leader>tt", ":TagbarToggle<CR>", opts)
map("n", "<leader>cs", ":Telescope colorscheme<CR>", opts)
