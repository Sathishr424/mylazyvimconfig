local Terminal = require("toggleterm.terminal").Terminal

function runPython(file)
  print("Running Python file...")
  local term = Terminal:new({
    cmd = "python3 " .. vim.fn.shellescape(file),
    direction = "float",
    close_on_exit = false,
  })

  term:toggle()
end

vim.keymap.set("n", "<leader>r", function()
  vim.cmd("write")

  local file = vim.fn.expand("%:p")
  local ext = vim.fn.fnamemodify(file, ":e")

  if ext == "py" then
    runPython(file)
  end
end)
