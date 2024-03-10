return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavor = "catppuccin-macchiato",
    })
  -- require("catppuccin").load()
  end,
}
