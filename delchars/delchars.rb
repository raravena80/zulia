#!/usr/bin/env ruby


arr = ['a', 'a', 'a', 'c', 'd', 'c', 'd', 'e', 'h', 'j']
n = arr.count

if arr.nil?
  exit(0)
end

if n < 2
  put arr
  exit(0)
end

tail = 1

(1..n-1).each do |i|
  (0..tail).each do |j|
    if arr[i] == arr[j]
      break
    end

    if j == tail
      arr[tail] = arr[i]
      tail = tail + 1
    end

  end
end
arr = arr[0..tail-1]
puts "#{arr}"
