class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal  # Animal is the superclass.
end

class Cat < Animal 
end

# Both Cat and GoodDog will inheritance behaviors from its superclasses
sparky = GoodDog.new
paws = Cat.new
puts sparky.speak           
puts paws.speak