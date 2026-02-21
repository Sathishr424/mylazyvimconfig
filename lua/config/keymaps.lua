-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader><space>", function()
  require("telescope.builtin").find_files({
    hidden = true,
    -- optional: exclude .git folder to keep results clean
    file_ignore_patterns = { ".git/" }
  })
end, { desc = "Find Files (Root Dir, including hidden)" })
