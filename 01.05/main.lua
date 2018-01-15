--[[
Problem: You need to work on a string without regard for any
leading or trailing spaces.
]]

require 'busted.runner'()

function lstrip(text) return text:match('[^ ].*') end
function rstrip(text) return text:match('.*[^ ]') end
function strip(text) return text:match('[^ ].*[^ ]') end

describe('lstrip', function ()
  it('stripts left spaces', function ()
    assert.are.equal(lstrip('  hello'), 'hello')
  end)
  it('stripts only left spaces', function ()
    assert.are.equal(lstrip('  hello  '), 'hello  ')
  end)
end)

describe('rstrip', function ()
  it('stripts right spaces', function ()
    assert.are.equal(rstrip('hello  '), 'hello')
  end)
  it('stripts only right spaces', function ()
    assert.are.equal(rstrip('  hello  '), '  hello')
  end)
end)

describe('strip', function ()
  it('stripts spaces', function ()
    assert.are.equal(strip('  hello  '), 'hello')
  end)
  it('stripts only leading and trailing spaces', function ()
    assert.are.equal(strip('  hello world  '), 'hello world')
  end)
end)
