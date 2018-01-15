-- You want to align strings: left, right, center;

require 'busted.runner'()


function align_text(str, padding, pos)
  local diff = padding - #str
  if diff > 0 then
    if pos == 'left' then
      return string.format("%s%s", str, string.rep(" ", diff))
    elseif pos == 'right' then
      return string.format("%s%s", string.rep(" ", diff), str)
    elseif pos == 'center' then
      return string.format(
        "%s%s%s",
        string.rep(" ", diff//2), str,
        string.rep(" ", diff - diff//2))
    end
  end
  return str
end

it('String aligned to the right', function ()
  assert.are.equal(align_text('hello', 10, 'left'), 'hello     ')
end)

it('String aligned to the left', function ()
  assert.are.equal(align_text('hello', 10, 'right'), '     hello')
end)

it('String aligned to the center', function ()
  assert.are.equal(align_text('hello', 10, 'center'), '  hello   ')
end)
