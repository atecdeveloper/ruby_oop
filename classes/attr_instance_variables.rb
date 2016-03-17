# Getter/Setter using attr method

class GoodDog
  # getter + setter
  attr_accessor :name, :age
  
  # getter only
  # attr_reader :name, :age
  
  # setter only
  # attr_writer :name, :age
  
  # Constructor
  def initialize(name, age)
    @name = name # Instance variable
    @age = age
  end  
  
  def change_info(name, age)
    self.name = name
    self.age = age
  end
  
  def info
    "#{name} is #{age} years old."
  end
end

dog = GoodDog.new("Bolt", 10)
#puts dog.name
#dog.name = "test"
puts dog.info
dog.change_info("test", 23) 
puts dog.info

