def power(exponent)
  proc {|base| base**exponent}
end

square = power(2)
cube = power(3)

a = square.call(10)
b = cube.call(5)

puts a
puts b
