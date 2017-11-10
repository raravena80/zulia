#!/usr/bin/env ruby

myfile = File.read('./samplelog')
lines = myfile.split("\n")
events = []

while lines.any?
  l = lines.shift
  next if l =~ /Non event/
  next unless l =~ /Begin/
  l = lines.shift
  while l !~ /End/
    events << l
    l = lines.shift
  end
end

puts events
