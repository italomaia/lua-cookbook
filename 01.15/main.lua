--[[
Problem: You want to convert tabs into spaces.
]]

require 'busted.runner'()

describe('you want to', function ()
  it('convert tabs into spaces', function()
    assert.are.equal(
      string.gsub("hello\tyou", "\t", string.rep(" ", 2)),
      "hello  you")
  end)
end)
