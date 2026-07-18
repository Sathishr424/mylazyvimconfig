local Terminal = require("toggleterm.terminal").Terminal

local function runPython(file)
  print("Running Python file...")
  local term = Terminal:new({
    cmd = "python3 " .. vim.fn.shellescape(file),
    direction = "float",
    close_on_exit = false,
  })

  term:toggle()
end

local function runShell(file)
  print("Running Shell script...")
  local term = Terminal:new({
    cmd = "bash " .. vim.fn.shellescape(file),
    direction = "float",
    close_on_exit = false,
  })

  term:toggle()
end

vim.keymap.set("n", "<leader>r", function()
  local file = vim.fn.expand("%:p")
  local ext = vim.fn.fnamemodify(file, ":e")

  if ext == "py" then
    vim.cmd("w")
    runPython(file)
  elseif ext == "sh" then
    vim.cmd("w")
    runShell(file)
  end
end)
