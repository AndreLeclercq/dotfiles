local function custom_highlights()
  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ff0000" })  -- Rouge pour les erreurs
  vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ffa500" })   -- Orange pour les warnings
  vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#00ffff" })   -- Cyan pour les infos
  vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#00ff00" })   -- Vert pour les hints
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = custom_highlights
})

custom_highlights()
