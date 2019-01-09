d = [1,2,3]
e = [1,2,3,4]
puts d <=> e #-1 (d < e)

words = %w(quick fox brown the)
list = words.sort
puts list

a = %w(January February March April May)
puts a.grep(/ary/)
puts a.grep(/ary/){|m| m.length}
b = [1,20,3,4,49,9,24]
puts b.grep(12..32)
puts b.grep(12..32) {|n| n*n}
