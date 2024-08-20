local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier, -- so prettier works only on these filetypes

  b.code_actions.eslint_d,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
  b.diagnostics.cpplint.with { args = { "--filter=-legal", "$FILENAME" } },

  -- python
  b.formatting.black.with { extra_args = { "--fast" } },
  b.diagnostics.flake8.with { filetypes = { "python" } },

  -- golang
  b.formatting.gofumpt,
  b.formatting.goimports_reviser,
  -- other
  b.diagnostics.codespell,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
