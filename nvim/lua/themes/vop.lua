---@type Base46Table
local M = {}

M.base_30 = {
  white = "#F39E60",
  darker_black = "#0a0a0a",
  black = "#121212",
  black2 = "#1a1a1a",
  one_bg = "#222222",
  one_bg2 = "#2a2a2a",
  one_bg3 = "#323232",
  grey = "#444444",
  grey_fg = "#4c4c4c",
  grey_fg2 = "#545454",
  light_grey = "#5c5c5c",
  red = "#E16A54",
  baby_pink = "#F39E60",
  pink = "#9F5255",
  line = "#222222",
  green = "#7cae7f",
  vibrant_green = "#8abe8d",
  nord_blue = "#6791c9",
  blue = "#5b6998",
  yellow = "#d7ae5f",
  sun = "#F39E60",
  purple = "#7C444F",
  dark_purple = "#4a2930",
  teal = "#749689",
  orange = "#E16A54",
  cyan = "#6791c9",
  statusline_bg = "#1a1a1a",
  lightbg = "#2a2a2a",
  pmenu_bg = "#E16A54",
  folder_bg = "#7C444F",
}

M.base_16 = {
  base00 = "#121212",
  base01 = "#222222",
  base02 = "#323232",
  base03 = "#90B0D9",
  base04 = "#9F5255",
  base05 = "#F39E60",
  base06 = "#f5b07f",
  base07 = "#f7c39e",
  base08 = "#E16A54",
  base09 = "#F39E60",
  base0A = "#9F5255",
  base0B = "#7cae7f",
  base0C = "#6791c9",
  base0D = "#F39E60",
  base0E = "#E16A54",
  base0F = "#7C444F",
}

M.type = "dark"

M.polish_hl = {
  defaults = {
    Comment = {
      fg = M.base_16.base03,
      italic = true
    }
  },
  treesitter = {
    ["@variable"] = { fg = M.base_16.base05 },
    ["@function"] = { fg = M.base_16.base0D },
    ["@keyword"] = { fg = M.base_16.base0E },
    ["@string"] = { fg = M.base_16.base0B },
    ["@number"] = { fg = M.base_16.base09 },
    ["@constant"] = { fg = M.base_16.base09 },
    ["@parameter"] = { fg = M.base_16.base05 },
    ["@field"] = { fg = M.base_16.base05 },
    ["@comment"] = { fg = M.base_16.base03, italic = true },
  },
}

return M
