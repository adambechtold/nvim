return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = {'nvim-lua/plenary.nvim'},
  config = function() 
    local builtin = require ('telescope.builtin')
    vim.keymap.set('n', '<Leader> ', builtin.find_files, {})
    vim.keymap.set('n', '<Leader>g', builtin.live_grep, {})
    vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<Leader>fc', builtin.commands, {})
  end
}
