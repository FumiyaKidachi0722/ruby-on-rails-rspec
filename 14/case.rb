score = "A"

case score
when "A"
  puts "大変良くできました"
when "B"
  puts "良くできました"
when "C"
  puts "頑張りましょう"
else
  puts "評価がありません"
end

month = 7

case month
when 3, 4, 5
  puts "#{month}月は春です"
when 6, 7, 8
  puts "#{month}月は夏です"
when 9, 10, 11
  puts "#{month}月は秋です"
when 12, 1, 2
  puts "#{month}月は冬です"
else
  puts "正しい月を入力してください"
end


score = 85

case score
when 90..100
  puts "A評価"
when 80..89
  puts "B評価"
when 70..79
  puts "C評価"
else
  puts "D評価"
end
