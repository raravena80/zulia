#!/usr/bin/env ruby

list1 = [ 3, 6, 7, 8, 9]
list2 = [ 6, 8, 10, 30, 40]

def combine(l1, l2)
  output = []
  while !(l1.empty? || l2.empty?)
      output << (l1.first < l2.first ? l1.shift : l2.shift)
  end
  return output + l1 + l2
end

puts "#{combine(list1, list2)}"
