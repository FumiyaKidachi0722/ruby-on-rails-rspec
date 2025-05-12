def sum(numbers)
  numbers.sum
end

puts sum([1, 2])

def sum(*numbers)
  numbers.sum
end

puts sum(1, 2)


def greet(message, *names)
  names.each do |name|
    puts "#{name}さん、#{message}"
  end
end

greet("こんにちは", "山田", "佐藤", "田中")
