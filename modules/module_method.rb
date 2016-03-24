# Module housing methods

module Mammal
  def self.some_out_of_place_method(num)
    num ** 2
  end
end

# Calling direct from the module
p Mammal.some_out_of_place_method(5)
