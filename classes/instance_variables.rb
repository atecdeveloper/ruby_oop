# Building/Using a contructor with instance variables

class GoodDog
  # Constructor
  def initialize(name, age)
    @name = name # Instance variable
    @age = age
  end  
  
  def speak
    puts "#{name} says arf!"
  end  
  
  def name 
    @name
  end
  
  def name=(n) # Setter method special syntax
    @name = n
  end
end

dog = GoodDog.new("Bolt", 10)
dog.speak
puts dog.name
dog.name = "test" 
puts dog.name
