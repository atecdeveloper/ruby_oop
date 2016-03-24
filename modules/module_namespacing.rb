# Using modules for namespacing. Organizing similar classes under a module.

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

# We call classes in a module by appending the class name to the module name... 
# with two colons(::)

buddy = Mammal::Dog.new
miau = Mammal::Cat.new
buddy.speak('Arf')
miau.say_name('Miau')
