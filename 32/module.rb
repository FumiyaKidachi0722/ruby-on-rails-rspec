module WalkBehavior
  def walk
    puts "散歩中です"
  end
end

class Dog
  include WalkBehavior

  def speak
    puts "わんわん"
  end
end

class Cat
  include WalkBehavior

  def speak
    puts "にゃにゃ"
  end
end

dog = Dog.new
dog.walk

cat = Cat.new
cat.walk
