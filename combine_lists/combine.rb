#!/usr/bin/env ruby

list1 = [3, 6, 7, 8, 9]
list2 = [6, 8, 10, 30, 40]

def combine(l1, l2)
  l1.reverse!
  l2.reverse!
  output = []
  loop do
    break if l1.empty? || l2.empty?
    output << (l1.last < l2.last ? l1.pop : l2.pop)
  end
  output + l1.reverse + l2.reverse
end

puts combine(list1, list2)
