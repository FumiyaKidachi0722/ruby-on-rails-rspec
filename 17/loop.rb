numbers = [1, 2, 3, 4, 5]

numbers.each do |number|
  next if number == 2
  break if number == 4
  puts number
end
