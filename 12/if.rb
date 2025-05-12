score = 85
# score = 70
# score = 65
# score = 50

puts "合格" if score >= 80

if score >= 80
  puts "優秀な成績"
elsif score >= 70
  puts "良い成績"
elsif score >= 60
  puts "普通の成績"
else
  puts "悪い成績"
end

score = 50

unless score >= 60
  puts "不合格"
end
