#!/usr/bin/env ruby
#
require_relative 'common'
pairs = PAIRS

def parents(pairs)
  first_elements = []
  second_elements = []

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

  puts "Zero parents: #{no_parents.uniq.join(', ')}"

  h = {}
  pairs.each do |i|
    h[i[1]] = if !h[i[1]].nil?
                h[i[1]] + 1
              else
                1
              end
  end

  one_parent = []
  h.each do |k, v|
    one_parent.push(k) if v == 1
  end
  puts "One parent: #{one_parent.join(', ')}"
end

parents(pairs)
