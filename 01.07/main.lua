-- Problem: you want to reverse the characters or words in a string.

require 'busted.runner'()

function reverse (word) return word:reverse() end
function reverse_phrase (phrase)
  local words = {}
  for word in phrase:gmatch('[^ ]+') do
    table.insert(words, 1, word)
  end
  return table.concat(words, ' ')
end

it('word can be reversed', function ()
  assert.are.equal(reverse('hello'), 'olleh')
end)

it('phrase can be reversed', function ()
  assert.are.equal(reverse_phrase('hello world'), 'world hello')
end)
