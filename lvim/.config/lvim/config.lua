-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Forum: https://www.reddit.com/r/lunarvim/
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
--#################### COLORSCHEME
lvim.transparent_window = true
lvim.colorscheme = "blue" -- aurora - solarized flat - gruvbox-material
-- lvim.colorscheme = "terafox" -- aurora - solarized flat - gruvbox-material

-- work
-- lvim.colorscheme = "nord"
--

lvim.plugins = {
    "ray-x/aurora",
    "ray-x/starry.nvim",
    "ishan9299/nvim-solarized-lua",
    "sainnhe/gruvbox-material",
    "shaunsingh/nord.nvim",
    {
        "craftzdog/solarized-osaka.nvim",
        config = function()
            require("solarized-osaka").setup({
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "transparent"
                },
            })
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        config = function() require("nightfox").setup({ transparent = true, terminal_colors = true,
            options = {
                styles = {
                    comments = "italic",
                    keywords = "bold",
                    types = "italic,bold",
                }
            }
        })
        end,

    }
}

vim.g.aurora_italic =  1
vim.g.aurora_darker = 1
vim.g.aurora_bold = 1
vim.g.aurora_transparent = 1

vim.g.starry_bold = true
vim.g.starry_italic = true
vim.g.starry_italic_comments = true
vim.g.starry_disable_background = true
vim.g.starry_deep_black = true
vim.g.starry_darker_contrast = true
vim.g.starry_italic_keywords = true
vim.g.starry_italic_functions = true
vim.g.starry_bold_keywords = true
vim.g.starry_bold_functions = true

lvim.builtin.lualine.style = "default" -- or "none"
lvim.builtin.lualine.options.theme = "auto"
-- lvim.builtin.lualine.options.theme = "nord"
--

lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
vim.opt.sw = 4

-- vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

-- In ~/.config/lvim/config.lua
vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = "powershell.exe -c Get-Clipboard",
    ["*"] = "powershell.exe -c Get-Clipboard",
  },
  cache_enabled = 0,
}
