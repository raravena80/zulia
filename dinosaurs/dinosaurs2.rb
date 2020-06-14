#!/usr/bin/env ruby
#

dino1 = File.read("dinosaurs1.csv").split
dino2 = File.read("dinosaurs2.csv").split

dinoh = {}
dino1.each do |l|
  i = l.split(",")
  dinoh[i.first] = {} if dinoh[i.first].nil?
  dinoh[i.first][:stride] = i[1]
  dinoh[i.first][:stance] = i[2]
end

dino2.each do |l|
  i = l.split(",")
  dinoh[i.first] = {} if dinoh[i.first].nil?
  dinoh[i.first][:length] = i[1]
  dinoh[i.first][:type] = i[2]
end

dinoh.each do |k, v|
  dinoh[k][:speed] = dinoh[k][:stride].to_f * dinoh[k][:length].to_f
end

dinoa = []

dinoh.each do |k, v|
  if v[:stance] == "bipedal"
    dinoa.push([k, v[:speed]])    
  end
end

sorted =  dinoa.sort_by! {|v| v[1]}.reverse!

sorted.each do |e|
  puts "Dinosaur: #{e[0]}, Speed: #{e[1]}"
end

