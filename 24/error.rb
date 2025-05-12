def divide(a, b)
  begin
    a / b
  rescue
    puts "計算に失敗しました"
  end
end

puts divide(10, 0)

def divide(a, b)
  a / b
rescue
  puts "計算に失敗しました"
end

puts divide(10, 0)


def greet(name)
  if name.empty?
    raise "名前を入力してください"
  end
  puts "こんにちは、#{name}さん"
  rescue => e
    puts e
end

greet("")
