--[[
Problem: You want to access portions of a string.
]]

require 'busted.runner'()

describe('you want to extract from a string', function ()
    it('chars in sequence', function ()
        assert.are.equal(string.sub("Hello My Friend", 7, 8), 'My')
    end)
    it('day, month and year', function ()
        assert.are.same(
          {string.find('10/11/2012', '(%d+)/(%d+)/(%d+)')},
          {1, 10, '10', '11', '2012'})
    end)
end)
