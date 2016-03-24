class Animal
 def speak
   "I am an animal."
 end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climable 
  def climb
    "I'm climbing."
  end
end 

class GoodDog < Animal
  include Swimmable
  include Climable
end

#dog = GoodDog.new
#p dog.climb

puts "----GoodDog method lookup----"
puts GoodDog.ancestors
