local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- Code Actions
  b.code_actions.eslint_d,
  b.code_actions.gitsigns,
  b.code_actions.shellcheck,

  -- Diagnostics
  b.diagnostics.codespell,
  b.diagnostics.curlylint,
  b.diagnostics.eslint_d,
  b.diagnostics.flake8,
  b.diagnostics.gitlint,
  b.diagnostics.jsonlint,
  b.diagnostics.write_good,
  b.diagnostics.pylint,

  -- Formatting
  b.formatting.black,
  b.formatting.codespell,
  b.formatting.eslint_d,
  b.formatting.isort,

  -- Completion
  b.completion.spell,
  b.completion.luasnip,
  b.completion.tags,

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettierd.with { filetypes = { "html", "markdown", "css" } },

  -- Lua
  b.formatting.stylua,
  b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  b.formatting.clang_format,
}


null_ls.setup {
  debug = true,
  sources = sources,
  -- format on save
  -- on_attach = function(client)
  --   if client.server_capabilities.document_formatting then
  --     vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
  --   end
  -- end,
}
