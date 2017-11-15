#!/usr/bin/env ruby

list = %w[ear era mug gum are ear sit]

anagrams = {}
list.each do |i|
  k = i.split('').sort.join
  anagrams[k] = [] if anagrams[k].to_s == ''
  anagrams[k] = anagrams[k].push(i) if anagrams[k].find_index(i).nil?
end

anagrams.each_value do |v|
  puts v.to_s
end
