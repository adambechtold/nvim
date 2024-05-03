vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nowrap")
vim.cmd("set cursorline")
vim.cmd("set cursorcolumn")
vim.cmd("set noswapfile")

-- https://jeffkreeftmeijer.com/vim-number/
vim.cmd("set number relativenumber") -- relativenumber")

-- folds
vim.cmd("set foldmethod=indent")
vim.cmd("set foldlevel=10")

-- Search
vim.cmd("set smartcase") -- case-insensitive search, unless the search pattern has a capital letter

-- spelling 
vim.cmd("set spell spelllang=en_us")
vim.cmd("set spelloptions=camel")
-- Reminders
-- ]s and [s to navigate between spelling error_message
-- ]S and [S to navigate between spelling error_message in different buffers
-- z= to see suggestions
-- zg to add word to dictionary
-- zw to remove word from dictionary
-- zG to remove word from dictionary for this session
-- zW to add word to dictionary for this session
