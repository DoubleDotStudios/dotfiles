---@type ChadrcConfig

local M = {}

local highlights = require "custom.highlights"

M.ui = {
  hl_override = highlights.override,
  hl_add = highlights.add,
  theme = 'catppuccin',
  transparency = true,
  statusline = {
    overriden_modules = function (modules)
      table.remove(modules, 11)
      table.remove(modules, 7)
      table.remove(modules, 7)
      table.move(modules, 3, 3, 6, modules)
      table.remove(modules, 3)
      table.insert(modules, 6, ' ')
      table.remove(modules, 7)
    end,
    theme = 'minimal',
    separator_style = 'round'
},
  tabufline = {
    enabled = false
  },
  nvdash = {
    load_on_startup = true,
    header = {
"    _   __                _         ",
"   / | / /__  ____ _   __(_)___ ___ ",
"  /  |/ / _ \\/ __ \\ | / / / __ `__ \\",
" / /|  /  __/ /_/ / |/ / / / / / / /",
"/_/ |_/\\___/\\____/|___/_/_/ /_/ /_/ "
    },
  }, 
}
M.plugins = 'custom.plugins'

return M

