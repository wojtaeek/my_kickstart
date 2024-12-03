vim.opt.number = true -- line numbers
vim.opt.relativenumber = false -- count from the current line up and down
vim.opt.mouse = 'a' -- mouse support
vim.opt.showmode = true --
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus' -- Copy/paste to system clipboard
end)
vim.opt.breakindent = false
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 500 -- Displays which-key popup sooner
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!
vim.opt.cursorline = true
vim.opt.scrolloff = 10
