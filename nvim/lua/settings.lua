
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

local cmp = require"cmp"
cmp.setup({
  snippet = {
    expand = function(args)
      require('snippy').expand_snippet(args.body)
    end
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'snippy' },
  },
  {
    { name = "buffer" },
  })
})

local LSP = require "lsp"
print("start LSP?")
LSP.init()


