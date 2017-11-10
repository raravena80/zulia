#!/usr/bin/env ruby

arr = %w[a a a c d c d e h j]
n = arr.count

exit(0) if arr.nil?

if n < 2
  put arr
  exit(0)
end

tail = 1

(1..n - 1).each do |i|
  (0..tail).each do |j|
    break if arr[i] == arr[j]

    if j == tail
      arr[tail] = arr[i]
      tail += 1
    end
  end
end
arr = arr[0..tail - 1]
puts arr.to_s
