class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal            # Animal is the superclass.
  def speak 
    super + " from GoodDog class" # Invokes the speak method from the superclass
  end
end

sparky = GoodDog.new
puts sparky.speak
