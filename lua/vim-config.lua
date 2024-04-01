vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- https://jeffkreeftmeijer.com/vim-number/
vim.cmd("set number relativenumber") -- relativenumber")

-- folds
vim.cmd("set foldmethod=indent")
vim.cmd("set foldlevel=3")

-- spelling 
vim.cmd("set spell spelllang=en_us")
-- Reminders
-- ]s and [s to navigate between spelling error_message
-- ]S and [S to navigate between spelling error_message in different buffers
-- z= to see suggestions
-- zg to add word to dictionary
-- zw to remove word from dictionary
-- zG to remove word from dictionary for this session
-- zW to add word to dictionary for this session
