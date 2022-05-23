
local map = vim.api.nvim_set_keymap

local schemes = {"OceanicNext", "OceanicNextLight"}
local scheme_len = table.getn(schemes)
local colscheme_id = 0
local M = {}

function M.cycle_colours()
  colscheme_id = colscheme_id + 1
  local name = schemes[(colscheme_id % scheme_len) + 1]
  vim.cmd(":colorscheme " .. name)
end

--map('n', '<leader>k', ":lua require('binds').cycle_colours()<cr>", {noremap = true})

return M
