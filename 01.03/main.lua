-- Problem: You need to test if a object is a string.

require 'busted.runner'()

it('is a string', function ()
  assert.is.True(type("hello") == 'string')
end)
