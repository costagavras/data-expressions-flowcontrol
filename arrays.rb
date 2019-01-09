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
#index of the min, alphabetical, April
puts a.index a.min

#Array union and intersection
a = [1, 2, 3, 4, 5]
b = [3, 4, 5, 6, 7]
#duplicates are removed
p c = a | b
#only duplicates
p d = a & b

a = [1, 2, nil, 4, nil, 7]
b = a.compact #[1,2,4,7]
