#!/usr/bin/env ruby
# This solution is using ascii codes in decimal
#
pangram = "The quick brown fox jumps over the lazy dog"
pangram.tr!(' ,!@#$%', '').downcase!

pangramArray = pangram.split("")

letters = []
pangramArray.each do |c|
  if (c.ord >= 97 || c.ord <= 122)
    letters.push(c.ord) 
  end
end

# sort and get all uniques
letters.uniq!.sort!

l = letters.length - 1
ispangram = true

# Calculate if numbers are consecutive
# If they are not then it's not a pangram
for i in 0..(l - 1)
  if letters[i] + 1 != letters[i + 1]
    ispangram = false
  end
end

puts ispangram
