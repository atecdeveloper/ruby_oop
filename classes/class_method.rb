#Class method example. 
#Class methods are methods we can call directly on the class itself.

class GoodDog
  def self.what_am_i      # Class method definition
    "I´m a class method" 
  end
  
  puts GoodDog.what_am_i

end