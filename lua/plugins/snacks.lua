return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- Globally exclude folders manually from all pickers, regardless of gitignore
      exclude = { ".git", "node_modules", "target", "build" },

      sources = {
        -- Configuration for the standard file finder (e.g., Snacks.picker.files())
        files = {
          hidden = true, -- Show hidden files (dotfiles like .env)
          ignored = true, -- FALSE means respect .gitignore (hide them). Set to TRUE to show them.
        },
        -- Configuration for the live grep search
        grep = {
          hidden = true,
          ignored = true, -- Respect gitignore when grepping text
        },
        -- Configuration for the file tree explorer
        explorer = {
          hidden = true, -- Show dotfiles by default
          ignored = true, -- Respect gitignore (hide node_modules, dist, etc.) by default
          actions = {
            recursive_open = function(picker, item)
              local Tree = require("snacks.explorer.tree")
              local Actions = require("snacks.explorer.actions")

              local function open_recursive(node)
                if not node or not node.dir then
                  return
                end

                -- Open the directory if it is closed
                if not node.open then
                  Tree:toggle(node.path)
                end

                -- Wait for Snacks to populate the children
                vim.defer_fn(function()
                  if not node.children then
                    return
                  end

                  for _, child in pairs(node.children) do
                    if child.dir then
                      open_recursive(child)
                    end
                  end

                  Actions.update(picker, { refresh = true })
                end, 50)
              end

              local node = Tree:node(item.file)

              if node and node.dir then
                open_recursive(node)
                open_recursive(node)
              end
            end,
          },
          win = {
            list = {
              keys = {
                ['<leader>r'] = 'recursive_open',
              },
            },
          },
        },
      },
    },
  },
}
