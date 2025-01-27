-- Copyright (c) 2020-2021 shadmansaleh
-- MIT license, see LICENSE for more details.
local FileName = require('lualine.component'):new()

FileName.new = function(self, options, child)
  local new_instance = self._parent:new(options, child or FileName)
  local default_symbols = {modified = '[+]', readonly = '[-]'}
  new_instance.options.symbols =
    vim.tbl_extend('force', default_symbols, new_instance.options.symbols or {})

  -- setting defaults
  if new_instance.options.file_status == nil then
    new_instance.options.file_status = true
  end
  if new_instance.options.shorten == nil then
    new_instance.options.shorten = true
  end
  if new_instance.options.full_path == nil then
    new_instance.options.full_path = false
  end

  return new_instance
end

FileName.update_status = function(self)
  local data = vim.fn.expand('%:p')
  if not self.options.full_path then
    data = vim.fn.expand('%:t')
  elseif self.options.shorten then
    data = vim.fn.expand('%:~:.')
  end

  if data == '' then
    data = '[No Name]'
  elseif vim.fn.winwidth(0) <= 84 or #data > 40 then
    data = vim.fn.pathshorten(data)
  end

  if self.options.file_status then
    if vim.bo.modified then
      data = data .. self.options.symbols.modified
    elseif vim.bo.modifiable == false or vim.bo.readonly == true then
      data = data .. self.options.symbols.readonly
    end
  end
  return data
end

return FileName
