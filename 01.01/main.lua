-- Problem: You want to process a string one character at a time.

function main (str)
  -- for each character or str, print it, once
  for i=1,#str do
    io.write(str:sub(i, i))
  end
end

main 'Hello World!'
