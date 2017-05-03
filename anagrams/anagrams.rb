#!/usr/bin/env ruby

list = ['ear', 'era', 'mug', 'gum', 'are', 'ear', 'sit']

anagrams = {}
list.each do |i|
   k = i.split("").sort.join
   if anagrams[k].to_s == ""
     anagrams[k] = []
   end
   if anagrams[k].find_index(i).nil?
     anagrams[k] = anagrams[k].push(i)
   end
end

anagrams.each do |k,v|
  puts "#{v}"
end
