numbers = [1, 2, 3]

numbers.each do |number|
  puts number
end


items = ["コーヒー", "紅茶", "緑茶"]

items.each do |item|
  puts "#{item}が注文されました"
end

prices = [100, 200, 300]
total = 0

puts "合計金額は#{total}円です"

prices.each do |price|
  total += price
end

puts "合計金額は#{total}円です"

numbers = [1, 2, 3]

numbers.each { |number| puts number }

fruits = ["りんご", "バナナ", "みかん"]

fruits.each.with_index(1) do |fruit, i|
  puts "#{i}番目の商品は#{fruit}です"
end
