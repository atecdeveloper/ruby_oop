class GoodDog
  DOG_YEARS = 7                # Constant
  
  attr_accessor :name, :age
  
  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end
  
  # By default the to_s method prints the object’s class and an encoding of the..
  #object id. The to_s instance method comes built in to every class in Ruby. 
  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

dog1 = GoodDog.new("Bolt", 4)
puts dog1.age
puts dog1