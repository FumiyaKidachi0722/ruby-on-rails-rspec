numbers = [3, 1, 4, 5, 2]

# 昇順（小さい順）に並び替え
sorted = numbers.sort
puts sorted

# 降順（大きい順）に並び替え
desc_sorted = numbers.sort.reverse
puts desc_sorted

# 逆順に並び替え
reversed = numbers.reverse
puts reversed

fruits = ["バナナ", "りんご", "オレンジ"]

sorted_fruits = fruits.sort
puts sorted_fruits


scores = [
  {name: "田中", score: 80},
  {name: "佐藤", score: 90},
  {name: "鈴木", score: 70}
]

# 点数で並び替え
sorted_by_score = scores.sort_by { |student| student[:score] }
puts sorted_by_score
