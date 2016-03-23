class Animal
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end  
end

class GoodDog < Animal
  def initialize(name, color)
    super(name)                   # Forwarding the argument to Animal initialize
    @color = color
  end  
end

dog = GoodDog.new("Bolt", "brown")
p dog
