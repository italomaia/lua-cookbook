--[[
Problem: You need to add or remove leading spaces to the
lines of a multi-line string
]]

require 'busted.runner'()

function change_lead(text, size)
  local lines = {}
  local lead = string.rep(' ', size)
  for line in text:gmatch("%s*([^\n]+)") do
    table.insert(lines, lead .. line)
  end
  return table.concat(lines, '\n')
end

describe('you want to change indentation', function ()
  it('to 4', function()
    assert.are.equal(
      change_lead([[
        Hello My Friend
        How do You Do]], 2),
      [[
  Hello My Friend
  How do You Do]])
  end)
end)
