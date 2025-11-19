return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua stuff
      "lua-language-server",
      "stylua",

      -- web dev stuff
      "css-lsp",
      "html-lsp",
      "eslint-lsp",
      "eslint_d",
      "typescript-language-server",
      "prettier",

      -- python stuff
      "pyright",
      "flake8",
      "black",
      "pylint",

      -- c/cpp stuff
      "clangd",
      "clang-format",
      "cpplint",

      -- go stuff
      "gopls",
      "go-debug-adapter",
      "golangci-lint",
      "gofumpt",
      "goimports-reviser",

      -- other
      "codespell",
    },
  },
}
