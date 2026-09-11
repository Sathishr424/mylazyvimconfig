return {
  'anasinnyk/nvim-k8s-crd',
  event = { "BufReadPre", "BufNewFile" }, -- or { 'BufEnter *.yaml' },
  dependencies = { 'neovim/nvim-lspconfig' },
  opts = {
    cache_dir = "$HOME/.cache/k8s-schemas/",
    k8s = {
      file_mask = "*.yaml",
    }
  },
}
