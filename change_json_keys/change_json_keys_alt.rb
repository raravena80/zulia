#!/usr/bin/env ruby

require 'yaml'
require 'json'

def map_keys(hash_or_array, &blk)
  if hash_or_array.is_a?(Hash)
    hash = hash_or_array
    hash.each_with_object({}) do |(key, val), new_hash|        
      new_hash[blk.call(key)] = if [Array, Hash].include?(val.class)
        map_keys(val, &blk)
      else
        val
      end
    end
  elsif hash_or_array.is_a?(Array)
    array = hash_or_array
    array.map { |elem| map_keys(elem, &blk) }
  end
end

data = YAML.load(File.read('nested.json'))
new_data = map_keys(data) do |key|
  key.gsub("$", '')
end

puts JSON.dump(new_data)
