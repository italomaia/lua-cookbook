--[[
Problem: you need to turn a character into its numeric ASCII (ISO)
or Unicode code, and vice versa.
]]

require 'busted.runner'()

it("'a' ordinal is 97", function ()
  assert.are.equal(string.byte('a'), 97)
end)

it("97 character is 'a'", function ()
  assert.are.equal(string.char(97), 'a')
end)
