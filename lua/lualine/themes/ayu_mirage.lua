-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
-- Genarated by lightline to lualine theme converter
-- https://gist.github.com/shadmansaleh/000871c9a608a012721c6acc6d7a19b9
-- LuaFormatter off
local colors = {
  color2   = '#242b38',
  color3   = '#d4bfff',
  color4   = '#d9d7ce',
  color5   = '#272d38',
  color13  = '#bbe67e',
  color10  = '#59c2ff',
  color8   = '#f07178',
  color9   = '#607080',
}
-- LuaFormatter on

local ayu_mirage = {
  visual = {
    a = {fg = colors.color2, bg = colors.color3, gui = 'bold'},
    b = {fg = colors.color4, bg = colors.color5}
  },
  replace = {
    a = {fg = colors.color2, bg = colors.color8, gui = 'bold'},
    b = {fg = colors.color4, bg = colors.color5}
  },
  inactive = {
    c = {fg = colors.color4, bg = colors.color2},
    a = {fg = colors.color4, bg = colors.color5, gui = 'bold'},
    b = {fg = colors.color4, bg = colors.color5}
  },
  normal = {
    c = {fg = colors.color9, bg = colors.color2},
    a = {fg = colors.color2, bg = colors.color10, gui = 'bold'},
    b = {fg = colors.color4, bg = colors.color5}
  },
  insert = {
    a = {fg = colors.color2, bg = colors.color13, gui = 'bold'},
    b = {fg = colors.color4, bg = colors.color5}
  }
}

return ayu_mirage
