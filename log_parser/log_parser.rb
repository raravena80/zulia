#!/usr/bin/env ruby

myfile = File.read('./samplelog')
lines = myfile.split("\n")
events = []

while lines.any? do
  l = lines.shift
  if l =~ /Non event/
    next
  end
  if l =~ /Begin/
    l = lines.shift
    while l !~ /End/ do
      events << l
      l = lines.shift
    end
  end
end

puts events
