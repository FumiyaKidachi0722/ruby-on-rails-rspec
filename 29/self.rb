class User
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def greet
    puts "こんにちは、#{self.name}です"
  end
end

user = User.new("山田")
user.greet
