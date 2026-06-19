local Terminal = require("toggleterm.terminal").Terminal

vim.keymap.set("n", "<leader>r", function()
  vim.cmd("write")

  local file = vim.fn.expand("%:p")

  local term = Terminal:new({
    cmd = "python3 " .. vim.fn.shellescape(file),
    direction = "float",
    close_on_exit = false,
  })

  term:toggle()
end)
