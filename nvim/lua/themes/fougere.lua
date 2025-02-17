-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table

local M = {}

-- UI
M.base_30 = {
  white = "#e4e6f3",
  darker_black = "#0b0d24",
  black = "#0d0f29", --  nvim bg
  black2 = "#111331",
  one_bg = "#151c36",
  one_bg2 = "#1a2140",
  one_bg3 = "#1f264a",
  grey = "#3f486a",
  grey_fg = "#4a547a",
  grey_fg2 = "#555f89",
  light_grey = "#606b98",
  red = "#cc4044",
  baby_pink = "#d94448",
  pink = "#e45458",
  line = "#151c36",
  green = "#7cae7f",
  vibrant_green = "#8abe8d",
  nord_blue = "#5b6998",
  blue = "#3f486a",
  yellow = "#d7ae5f",
  sun = "#e2b866",
  purple = "#341c31",
  dark_purple = "#2a1728",
  teal = "#749689",
  orange = "#c97d63",
  cyan = "#6791c9",
  statusline_bg = "#111331",
  lightbg = "#1a2140",
  pmenu_bg = "#cc4044",
  folder_bg = "#3f486a",
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#0d0f29", -- Default Background
  base01 = "#151c36", -- Lighter Background (Used for status bars, line number and folding marks)
  base02 = "#1f264a", -- Selection Background
  base03 = "#6B89C5", -- Comments, Invisibles, Line Highlighting
  base04 = "#526083", -- Dark Foreground (Used for status bars)
  base05 = "#e4e6f3", -- Default Foreground, Caret, Delimiters, Operators
  base06 = "#ecedf8", -- Light Foreground (Not often used)
  base07 = "#f2f3fb", -- Light Background (Not often used)
  base08 = "#cc4044", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
  base09 = "#c97d63", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
  base0A = "#d7ae5f", -- Classes, Markup Bold, Search Text Background
  base0B = "#7cae7f", -- Strings, Inherited Class, Markup Code, Diff Inserted
  base0C = "#6791c9", -- Support, Regular Expressions, Escape Characters, Markup Quotes
  base0D = "#e4e6f3", -- Functions, Methods, Attribute IDs, Headings (changé pour blanc cassé)
  base0E = "#d94448", -- Keywords, Storage, Selector, Markup Italic, Diff Changed (rouge plus vif)
  base0F = "#cc4044", -- Deprecated, Opening/Closing Embedded Language Tags
}

M.type = "dark"

M.polish_hl = {
  defaults = {
    Comment = {
      fg = M.base_16.base03,
      italic = true,
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
