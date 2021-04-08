
-- Taken from https://icyphox.sh/blog/nvim-lua/ 
--
local uv = vim.loop

 local mode_map = {
	['n'] = 'normal ',
	['no'] = 'n·operator pending ',
	['v'] = 'visual ',
	['V'] = 'v·line ',
	[''] = 'v·block ',
	['s'] = 'select ',
	['S'] = 's·line ',
	[''] = 's·block ',
	['i'] = 'insert ',
	['R'] = 'replace ',
	['Rv'] = 'v·replace ',
	['c'] = 'command ',
	['cv'] = 'vim ex ',
	['ce'] = 'ex ',
	['r'] = 'prompt ',
	['rm'] = 'more ',
	['r?'] = 'confirm ',
	['!'] = 'shell ',
	['t'] = 'terminal '
}

local function mode()
  local m = vim.api.nvim_get_mode().mode
  if mode_map[m] == nil then return m end
  return mode_map[m]
end


vim.api.nvim_exec(
[[
  hi PrimaryBlock   cterm=bold ctermfg=White ctermbg=128
  hi SecondaryBlock cterm=bold ctermfg=128 ctermbg=White
  hi Blanks   cterm=bold ctermfg=0 ctermbg=White
]], false)


function make_phystatusline() 
  local stl = {
    '%#DiffRemoved# ',
    mode(),
    '%#TermCursor#',
    ' %f',
    ' %m',
    '%=',
    '%#TermCursor#',
    '%l,%c ',
    '%#TermCursor#',
    ' %{&filetype}',
    '   ',
  }
  return table.concat(stl)
end

vim.cmd[[ set statusline=%!luaeval('make_phystatusline()') ]]

