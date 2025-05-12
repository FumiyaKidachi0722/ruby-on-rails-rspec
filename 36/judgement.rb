numbers = [1, 2, 3, 4, 5]

# 3が含まれているかを確認
puts numbers.include?(3)

# 10が含まれているかを確認
puts numbers.include?(10)

# 文字列の配列でも使えます
fruits = ["りんご", "バナナ", "オレンジ"]
puts fruits.include?("バナナ")


puts [].empty?


name = nil
puts name.nil?
