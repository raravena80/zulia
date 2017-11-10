#!/usr/bin/env ruby
#

pairs = [[1, 3], [2, 3], [3, 6], [5, 6], [5, 7], [4, 5], [4, 8], [8, 9]]

def parents(pairs)
  parentsh = {}
  pairs.each do |i|
    parentsh[i[0]] = 0 if parentsh[i[0]].nil?

    parentsh[i[1]] = if parentsh[i[1]].nil?
                       1
                     else
                       parentsh[i[1]] + 1
                     end
  end

  zero = []
  one = []
  parentsh.each do |k, v|
    zero.push(k) if v == 0
    one.push(k) if v == 1
  end

  puts "Zero parents: #{zero.join(', ')}"
  puts "One parent: #{one.join(', ')}"
end

parents(pairs)
