
--require'nvim-tree'.setup{}

--[[
  -- nvim-tree config {{
vim.g.nvim_tree_ignore = {".git", "node_modules"}
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_show_icons = {git=1,folders=1, files=1 }
--]]
--vim.api.nvim_set_keymap("n", [[<leader>t]], ":NvimTreeToggle<CR>", {noremap=true})
  -- }}

local LSP = require "lsp"
print("start LSP?")
LSP.init()


