#!/usr/bin/env ruby

file1 = File.read('dinosaurs1.csv')
file2 = File.read('dinosaurs2.csv')

dinosaurs = {}

# Process first file
dino1 = file1.split("\n")
dino1.each do |l|
  i = l.split(",")
  dinosaurs[i[0]] = {:length => i[1], :stance => i[2]}
end

# Process second file
dino2 = file2.split("\n")
dino2.each do |l|
  i = l.split(",")
  dinosaurs[i[0]][:stride] = i[1]
  dinosaurs[i[0]][:food] = i[2]
end

# Calculate speed
dinosaurs.each do |k,v|
  dinosaurs[k][:speed] = dinosaurs[k][:length].to_f * dinosaurs[k][:stride].to_f
end

# Sort by speed
sorted = []
dinosaurs.each do |k,v|
  if v[:stance] == 'bipedal'
    sorted = sorted.push([k, v[:speed]])
  end
end

sorted = sorted.sort_by! {|i| i.last}.reverse!
sorted.each do |i|
  puts "Dinosaur: #{i[0]}, Speed: #{i[1]}"
end