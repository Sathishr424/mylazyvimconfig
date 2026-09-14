-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.exrc = true
vim.keymap.set("n", "<C-a>", "ggVG")

local kube_schema = require("user.additional-schemas")

vim.api.nvim_create_user_command("KubeSchema", function()
  kube_schema.init()
end, {})

require("user.helm")
