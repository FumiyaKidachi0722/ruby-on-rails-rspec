class Animal
  def speak
    puts "鳴き声"
  end
end

module Zoo
  module Ueno
    class Animal
      def speak
        puts "動物園の動物が鳴いています"
      end
    end
  end
end

module Farm
  class Animal
    def speak
      puts "農場の動物が鳴いています"
    end
  end
end

animal = Animal.new
animal.speak

zoo_animal = Zoo::Ueno::Animal.new
zoo_animal.speak

farm_animal = Farm::Animal.new
farm_animal.speak
