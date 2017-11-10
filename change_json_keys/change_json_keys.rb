#!/usr/bin/env ruby

require 'yaml'
require 'json'

def iterate(data)
  if data.is_a?(Array)
    data.map { |i| iterate(i) }
  elsif data.is_a?(Hash)
    new_h = Hash[data]
    data.each do |k, v|
      if k =~ /\$/
        new_key = k.delete("\$")
        new_h.delete(k)
        new_h[new_key] = if v.is_a?(Array) || v.is_a?(Hash)
                           iterate(v)
                         else
                           v
                         end
      else
        new_h[k] = if v.is_a?(Array) || v.is_a?(Hash)
                     iterate(v)
                   else
                     v
                   end
      end
    end
    new_h
  else
    puts 'here'
    data
  end
end

data = YAML.safe_load(File.read('nested.json'))
puts JSON.dump(iterate(data))
