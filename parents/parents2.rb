#!/usr/bin/env ruby
# 

pairs = [[1, 3], [2, 3], [3, 6], [5, 6], [5, 7], [4, 5], [4, 8], [8, 9]]

def parents(pairs)
  parentsh = {}
  pairs.each do |i|
    if parentsh[i[0]].nil?
      parentsh[i[0]] = 0
    end

    if parentsh[i[1]].nil?
      parentsh[i[1]] = 1
    else
      parentsh[i[1]] = parentsh[i[1]] + 1
    end
  end

  zero = []
  one = []
  parentsh.each do |k,v|
    if v == 0
      zero.push(k)
    end
    if v == 1
      one.push(k)
    end
  end

  puts "Zero parents: #{zero.join(", ")}"
  puts "One parent: #{one.join(", ")}"
end

parents(pairs)
