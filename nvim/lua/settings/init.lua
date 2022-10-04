local set = vim.opt

set.termguicolors = true
set.startofline = true
set.inccommand = 'nosplit'
-- set.background = 'dark'     -- Setting dark mode
set.belloff = 'all'         -- No sounds
set.backspace = 'indent,eol,start'         -- Backspace in insert mode works like normal editor
set.ttyfast = true
set.lazyredraw = true
set.guicursor = 'i:block'
vim.bo.autoindent = true       -- auto indenting
set.number = true              -- also show current absolute line
set.relativenumber = true      -- line numbers
vim.wo.colorcolumn = '80'
set.ruler = true
set.smarttab = true
set.cindent = true
set.tabstop = 2
set.shiftwidth = 2
set.encoding = 'UTF-8'    -- vim-devicons require this
set.expandtab = true      -- always uses spaces instead of tab characters
set.updatetime = 300      -- Faster completion
set.timeoutlen = 500      -- By default timeoutlen is 1000 ms
set.splitbelow = true
set.splitright = true
-- Permanent undo
set.undodir = vim.fn.stdpath('config') .. '/.nvimdid'
set.undofile = true

-- vimdiff
-- set diffopt+=iwhite -- No whitespace in vimdiff
-- Make diffing better: https://vimways.org/2018/the-power-of-diff/
-- set diffopt+=algorithm:patience
-- set diffopt+=indent-heuristic

-- Proper search
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.gdefault = true
set.completeopt = 'menuone,noinsert,noselect'    -- Better completion
set.cmdheight = 2
set.updatetime = 300
set.laststatus = 2
set.showmode = false
-- Decent wildmenu
set.wildmenu = true
set.wildmode = 'list:longest'
-- set.wildignore = .hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor

-- indent-blankline settings
-- set.list = true
-- set.listchars:append("eol:↴")
vim.cmd('au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=500}')

vim.cmd("autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif")
