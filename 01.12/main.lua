--[[
Problem: You need to convert a string from uppercase to lowercase, or
vice versa.
]]

require 'busted.runner'()

function capitalize (text)
  return text:sub(1, 1):upper() .. text:sub(2)
end

describe('change text case', function ()
  it('to capitalized', function ()
    assert.are.equal(capitalize('hello'), 'Hello')
  end)
  it('to upper', function ()
    assert.are.equal(string.upper('hello'), 'HELLO')
  end)
  it('to lower', function ()
    assert.are.equal(string.lower('HELLO'), 'hello')
  end)
end)
