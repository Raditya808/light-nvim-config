-- local options = {
--   formatters_by_ft = {
--     lua = { "stylua" },
--     css = { "prettier" },
--     html = { "prettier" },
--     typescript = { "prettier" },
--     python = { "ruff_fix","ruff_format","ruff_organize_imports" },
--     cpp={"clang-format"},

--   },

--   format_on_save = {
--     -- These options will be passed to conform.format()
--     timeout_ms = 500,
--     lsp_fallback = true,
--     async = false,
--   },
-- }

-- return options


-- new conform for prettier lenguage server support 
-- and fix the ruff
local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    typescript = { "prettier" },
    -- bug fix ruff 
    python = { "black" }, 
    cpp = { "clang-format" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
    async = false,
  },
}

return options