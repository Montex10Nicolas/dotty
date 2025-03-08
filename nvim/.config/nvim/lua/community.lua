-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.recipes.vscode-icons" },
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.utility.hover-nvim" },

  -- Themes
  -- Astromars
  -- { import = "astrocommunity.colorscheme.hybrid-nvim", name = "hybrid" },
  -- { import = "astrocommunity.colorscheme.everblush-nvim" },
  -- { import = "astrocommunity.colorscheme.mellifluous-nvim" },
  -- { import = "astrocommunity.colorscheme.nightfox-nvim" }, -- terafox
  -- import/override with your plugins folder
}
