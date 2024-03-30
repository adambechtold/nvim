return {
  "RRethy/vim-illuminate",
  config = function()
    require("illuminate").configure({})
    -- Keymaps are configured in whichkey.lua because that makes it easy to show the
    -- labels in which key
  end,
}
