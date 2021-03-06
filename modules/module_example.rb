# "Speak" module example

module Speak
  def speak(sound)
    puts "#{sound}"  
  end    
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

bolt = GoodDog.new
bolt.speak("AUAU!")
andre = HumanBeing.new
andre.speak("What's up!")

# Method Lookup chain
puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors
