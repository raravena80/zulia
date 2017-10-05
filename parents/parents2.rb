#!/usr/bin/env ruby
#
# 
# Suppose we have some input data describing relationships between
# parents and children over multiple generations. The data is formatted
# as a list of (parent, child) pairs, where each individual is assigned
# a unique integer identifier.
# 
# For example, in this diagram, 3 is a child of 1 and 2, and 5 is a child of 4:
#             
# 1   2   4
#  \ /   / \
#   3   5   8
#    \ / \   \
#     6   7   9
# 
# Write a function that takes this data as input and returns
# two collections:
# one containing all individuals with zero known parents,
# and one containing all individuals with exactly one known parent.
# 
# Sample output:
# Zero parents: 1, 2, 4
# One parent: 5, 7, 8, 9
# 
# Feel free to solve this problem in any language of your choice.
# 
# parent_child_pairs = [[1, 3], [2, 3], [3, 6], [5, 6], [5, 7], [4, 5], [4, 8], [8, 9]]
# 
# 
# 
# def no_parents_oneparent(pairs)
#    pairs.each do |i|
#      first_elements
#    end
# 
# 
# end
# 
# 
# 
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
