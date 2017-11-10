#!/usr/bin/env ruby

require 'yaml'
require 'json'

def clean_up(obj)
  case obj
  when Hash
    obj.each_with_object({}) do |(k, v), h|
      key =
        case k
        when String then k.delete('$')
        when Symbol then k.to_s.delete('$').to_sym
        else k
        end
      h[key] = clean_up(v)
    end
  when Array
    obj.each_with_object([]) { |e, a| a << clean_up(e) }
  else
    obj
  end
end

data = YAML.safe_load(File.read('nested.json'))
new_data = clean_up(data)
puts JSON.dump(new_data)
