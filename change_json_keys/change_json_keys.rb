#!/usr/bin/env ruby

require 'yaml'
require 'json'

def iterate(data)
  if data.is_a?(Array)
    return data.map { |i| iterate(i) }
  elsif data.is_a?(Hash)
    new_h = Hash[data]
    data.each do |k, v|
      if k =~ /\$/
        new_key = k.delete("\$")
        new_h.delete(k)
        if v.is_a?(Array) || v.is_a?(Hash)
          new_h[new_key] = iterate(v)
        else
          new_h[new_key] = v
        end
      else
        if v.is_a?(Array) || v.is_a?(Hash)
          new_h[k] = iterate(v)
        else
          new_h[k] = v
        end
      end
    end
    return new_h
  else
    puts 'here'
    return data
  end
end

data = YAML.load(File.read('nested.json'))
puts JSON.dump(iterate(data))
