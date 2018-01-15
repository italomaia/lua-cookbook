--[[
Problem: You have several small strings that you need to combine into
a larger string
]]

require 'busted.runner'()

it('combines strings', function ()
  assert.are.equal(table.concat({'hello', ' ', 'world'}), 'hello world')
end)
