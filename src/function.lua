#!/usr/bin/lua

-- defines a factorial function
function fact(n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

io.write("enter a number: ")
a = io.read("*number")        -- read a number
print(fact(a))
