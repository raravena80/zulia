#!/usr/bin/env ruby

a = [ 3, 2, 2, 5, 2, 1, 7 ]
# a = [ 7, 2, 2, 5, 2, 1, 4 ]

max = a[0]
sum = 0
topo = []

for i in 0..a.length - 1
  if a[i] >= max
    max = a[i]
    topo[i] = 0
  elsif a[i] < max
    topo[i] = max - a[i]
  end
end


max = a[a.length - 1]
for i in 0..a.length - 1 
  j = a.length - 1 - i
  if a[j] >= max
    max = a[j]
    topo[j] = 0
  elsif
    topo[j] = [topo[j], max - a[j]].min
  end
end

# puts "#{topo}"

topo.each do |i|
  sum = sum + i
end

puts sum
