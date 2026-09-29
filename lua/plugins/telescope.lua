return {
  "nvim-telescope/telescope.nvim",
  opts = {
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
        find_command = {
          "fd",
          "--type",
          "f",
          "--hidden",
          "--exclude",
          "node_modules",
        },
      },
    },
  },
}
