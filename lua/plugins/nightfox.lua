-- set up for nightfox theme
-- or u can set up another theme in one file 
return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  priority = 1000,

  config = function()
    require("nightfox").setup({
      option = {
          dim_inactive = true,
      },
    })
  end,
}
