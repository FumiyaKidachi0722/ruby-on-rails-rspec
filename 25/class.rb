class Dog
  def set_name(name)
    @name = name
  end

  def bark
    puts "#{@name}: わんわん!"
  end
end

pochi = Dog.new
puts pochi.inspect
pochi.set_name("ポチ")
puts pochi.inspect
pochi.bark

shiro = Dog.new
shiro.set_name("シロ")
shiro.bark


class Calculator
  def calculate_total(price)
    @tax = 0.1
    total = price * (1 + @tax)
    puts "税込金額: #{total}円"
  end

  def show_tax
    puts "消費税: #{@tax}"
  end
end

calc = Calculator.new
calc.calculate_total(1000)
calc.show_tax
