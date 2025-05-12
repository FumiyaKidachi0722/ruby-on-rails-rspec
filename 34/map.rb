numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map do |n|
  n * 2
end

puts doubled_numbers

even_numbers = numbers.select do |n|
  n.even?
end

puts even_numbers

result = numbers.select { |n| n.even? }.map { |n| n * 2 }

puts result
