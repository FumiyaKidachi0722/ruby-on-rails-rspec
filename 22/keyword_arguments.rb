def print_info(name, age)
  puts "#{name}さんは#{age}歳です"
end

print_info("山田", 25)
print_info(25, "山田")

def print_info(name:, age:)
  puts "#{name}さんは#{age}歳です"
end

print_info(name: "山田", age: 25)
