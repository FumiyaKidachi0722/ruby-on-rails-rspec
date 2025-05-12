class Animal
  def initialize(name)
    @name = name
  end
  
  def speak
    puts "#{@name}が鳴きます"
  end

  def speaking
    puts "#{@name}が鳴いている"
  end
end

class Dog < Animal
  def speak
    puts "#{@name}がワンと鳴きます"
  end
end

class Cat < Animal
  def speak
    puts "#{@name}がニャーと鳴きます"
  end
end

dog = Dog.new("ポチ")
cat = Cat.new("タマ")

dog.speak
dog.speaking
cat.speak
