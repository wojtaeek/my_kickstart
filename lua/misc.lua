--dango do django
vim.api.nvim_create_user_command('Dango', function(opts)
  local arg = opts.args
  vim.cmd('!' .. 'python manage.py ' .. arg)
end, { nargs = 1 })
require('nvim-treesitter.install').compilers = { 'zig' }
vim.g.undotree_DiffCommand = 'FC'
--autostart into neotree
require('transparent').clear_prefix 'NeoTree'
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    vim.cmd 'Neotree'
    vim.cmd 'wincmd l'
    vim.cmd 'q'
  end,
})
vim.api.nvim_create_user_command('Gorun', function(opts)
  local arg = opts.args
  vim.cmd('!' .. 'go run ' .. arg)
end, { nargs = 1 })
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*.json',
  callback = function()
    vim.cmd '%!jq .'
  end,
})
