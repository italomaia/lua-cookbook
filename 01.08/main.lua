--[[
Problem: You need to check for the occurrence of any of a set of characters
in a string
]]

require 'busted.runner'()

function has_some(chars, text)
  for c in chars:gmatch("%a") do
    if text:find(c) then return true end
  end
  return false
end

it('text has some char', function()
  assert.is_false(has_some('abc', 'hello world'))
  assert.is_true(has_some('def', 'hello world'))
end)
