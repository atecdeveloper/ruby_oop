module Shout
  def shout(string)
    puts "#{string}"
  end  
end  

# Class mixin module "Shout"
class MyClass
  include Shout
end

