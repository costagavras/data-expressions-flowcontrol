list = %w[alpha bravo charlie delta echo]

#while
i = 0
while i < list.size do
  puts "#{list[i]}"
  i += 1
end

#until
i = 0
until i == list.size do
  puts "#{list[i]}"
  i += 1
end

#for
for x in list do
  puts "#{x}"
end

#each
list.each do |x|
  puts "#{x}"
end

#times
n = list.size
n.times do |i|
  puts "#{list[i]}"
end

#for
n = list.size - 1
for i in 0..n do
  puts "#{list[i]}"
end
