-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "fougere",
  font = {
    family = "Iosevka Nerd Font Mono",
    size = 12,
  },

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },

}

vim.cmd[[
  hi DiagnosticVirtualTextError guifg=#db4b4b gui=italic
  hi DiagnosticVirtualTextWarn guifg=#e0af68 gui=italic
  hi DiagnosticVirtualTextInfo guifg=#0db9d7 gui=italic
  hi DiagnosticVirtualTextHint guifg=#10B981 gui=italic
]]

return M
