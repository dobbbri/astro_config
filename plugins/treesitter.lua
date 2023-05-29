return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "nvim-telescope/telescope-media-files.nvim" },
  opts = function(_, opts)
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "css",
      "scss",
      "html",
      "vue",
      "javascript",
      "json",
      "typescript",
      "tsx",
      "astro",
      "markdown",
      "markdown_inline",
    })
  end,
  config = function(plugin, opts)
    require "plugins.configs.telescope"(plugin, opts)
    local telescope = require "telescope"
    telescope.load_extension "media_files"
  end,
}
