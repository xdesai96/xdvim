local servers = require("lsp.servers")

for name, config in pairs(servers) do
  vim.lsp.config[name] = config

  if vim.fn.executable(config.cmd[1]) == 1 then
    vim.lsp.enable(name)
  else
    vim.notify(
      ("LSP: %s not found (required by %s)"):format(config.cmd[1], name),
      vim.log.levels.WARN
    )
  end
end

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  update_in_insert = true,
})
