return {
  "AstroNvim/astrotheme",
  lazy = false,
  priority = 1000,
  config = function()
    local astrotheme = require("astrotheme")
    astrotheme.setup({
      palette = "astrodark", -- String of the default palette to use when calling `:colorscheme astrotheme`
    })
    -- astrotheme.load()
  end,
}
