#!/usr/bin/env ruby

list = [3, 4, 1, 2, 3, 5, 2]

arr1 = []
def get_sum_of_elements(arr)
  sum = 0
  arr.each do |e|
    sum += e
  end
  sum
end

list.each_with_index do |i, e|
  arr1 = arr1.push(e)
  arr2 = list[i + 1..-1]
  sum1 = get_sum_of_elements(arr1)
  sum2 = get_sum_of_elements(arr2)
  if sum1 == sum2
    puts "Array1: #{arr1}, Sum: #{sum1}"
    puts "Array2: #{arr2}, Sum: #{sum2}"
  end
end
