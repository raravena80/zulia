#!/usr/bin/env ruby

# initializing lists
topo = [ 3, 2, 2, 5, 2, 1, 7 ]
n = topo.count
left = []

left[0] = topo[0]
(1..n-1).each do |i|
  left[i] = [left[i-1], topo[i]].max
end

right = Array.new(n)
right[n - 1] = topo[n - 1]
(-n + 2..0).each do |i|
  k = i.abs
  right[k] = [right[k + 1], topo[k]].max
end
 
water = 0
(0..n-1).each do |i|
  water += [right[i], left[i]].min - topo[i]
end

puts water
