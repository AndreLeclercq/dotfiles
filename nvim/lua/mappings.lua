require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>gg", ":LazyGit<CR>", {noremap = true, silent = true})
map('t', 'jk', [[<C-\><C-n>]], { noremap = true })
map("n", "<leader>fp", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })

map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
map("t", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })

map("n", "<leader>tv", "<cmd>lua set_terminal_direction('vertical')<CR>", { desc = "Set terminal to vertical" })
map("n", "<leader>th", "<cmd>lua set_terminal_direction('horizontal')<CR>", { desc = "Set terminal to horizontal" })
map("n", "<leader>tf", "<cmd>lua set_terminal_direction('float')<CR>", { desc = "Set terminal to float" })

map("t", "<leader>tv", "<cmd>lua set_terminal_direction('vertical')<CR>", { desc = "Set terminal to vertical" })
map("t", "<leader>th", "<cmd>lua set_terminal_direction('horizontal')<CR>", { desc = "Set terminal to horizontal" })
map("t", "<leader>tf", "<cmd>lua set_terminal_direction('float')<CR>", { desc = "Set terminal to float" })

-- Fonction pour changer la direction du terminal
function _G.set_terminal_direction(direction)
  local term = require('toggleterm.terminal').get_or_create_term(1)
  -- Si le terminal est ouvert, on le ferme d'abord
  if term:is_open() then
    term:close()
  end
  -- Définir la nouvelle direction
  term.direction = direction
  -- Rouvrir le terminal avec la nouvelle direction
  term:open()
end
