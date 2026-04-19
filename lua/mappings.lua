require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
-- map({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
-- map({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- in insert mode, accept suggestion
map("i", "<C-l>", function()
  vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, { desc = "Copilot Accept", noremap = true, silent = true })
local opts = { silent = true, noremap = true, desc = "GitHub Copilot" }

-- Accept full suggestion
-- map("i", "<C-l>", 'copilot#Accept("<CR>")', { expr = true, replace_keycodes = false, desc = "Copilot Accept" })

-- Accept by word
map("i", "<C-j>", "copilot#AcceptWord()", { expr = true, replace_keycodes = false, desc = "Copilot Accept Word" })

-- Accept by line
map("i", "<C-k>", "copilot#AcceptLine()", { expr = true, replace_keycodes = false, desc = "Copilot Accept Line" })

-- Open Copilot Chat (requires GitHub Copilot Chat plugin)
map("n", "<leader>cc", ":Copilot chat<CR>", opts)
