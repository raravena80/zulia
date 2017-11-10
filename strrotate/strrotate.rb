#!/usr/bin/env ruby

str1 = 'waterbottle'
str2 = 'bottlewater'

str = str1 + str1

if str[str2].nil?
  puts "#{str2} is not a substring of #{str1}"
  false
else
  puts "#{str2} is a substring of #{str1}"
  true
end
