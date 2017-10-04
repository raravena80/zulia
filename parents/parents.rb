#!/usr/bin/env ruby
#

pairs = [[1, 3], [2, 3], [3, 6], [5, 6], [5, 7], [4, 5], [4, 8], [8, 9]]

def parents(pairs)
  first_elements = []
  second_elements = []
  
  no_parents = []
  has_a_parent = []
  
  pairs.each do |i|
     first_elements.push(i[0])
     second_elements.push(i[1])
  end
   
  first_elements.each do |f|
    second_elements.each do |s|
      if f == s
        has_a_parent.push(f)
        break
      end
    end   
  end
  no_parents = first_elements - has_a_parent

  puts "Zero parents: #{no_parents.uniq.join(", ")}"

  h = {}
  pairs.each do |i|
    if ! h[i[1]].nil?
      h[i[1]] = h[i[1]] + 1
    else
      h[i[1]] = 1
    end
    
  end

  one_parent = [] 
  h.each do |k, v|
    if v == 1
      one_parent.push(k)
    end
  end
  puts "One parent: #{one_parent.join(", ")}"  
end

parents(pairs)
