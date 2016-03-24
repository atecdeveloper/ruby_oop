module Measure
  def weight(w)
    "This truck weights #{w}"
  end
end

class Vehicle
  # Getter/Setter
  attr_accessor :year, :color, :model, :crt_speed 
  @@number_of_vehicles = 0
  
  # Contructor
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model.capitalize
    @crt_speed = 0
    @@number_of_vehicles += 1
  end
  
  def age
    "Your #{model} is #{years_old} years old."
  end
  
  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def self.gas_mileage(gallons, miles)                # Class method
    puts "#{miles / gallons} miles per gallon of gas"
  end 
  
  def spray_paint(color)
    self.color = color.downcase
  end
  
  def speed_up(speed)
    self.crt_speed += speed
  end

  def brake(speed)
    self.crt_speed -= speed
  end
  
  def turn_off
    self.crt_speed = 0
  end

  def to_s # User friendly print out of your object.
    "This #{color} #{model} is from #{year}."
  end
  
  def show_speed
    "Its current speed is #{crt_speed}mp/h"
  end
  
  # Everything above this tag will be private
  private 
  
  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUNBER_OF_DOORS = 2
  def to_s # User friendly print out of your object.
    "Car: #{color} #{model} from #{year}."
  end
  
end

class MyTruck < Vehicle
  include Measure
  NUMBER_OF_DOORS = 4
  def to_s # User friendly print out of your object.
    "Truck: #{color} #{model} from #{year}."
  end
end

car = MyCar.new(1999, 'white', 'toyota')
truck = MyTruck.new(1929, 'black', 'ford')
#car.spray_paint("rEd")
#car.speed_up(60)
#puts car.show_speed
#car.brake(20)
#puts car.show_speed
#car.turn_off
#puts car.show_speed
#puts MyCar.gas_mileage(10, 350)
puts car
puts truck
Vehicle.number_of_vehicles
#puts car.age
#p truck.weight(12)
#puts '----Method Lookup----'
#puts MyCar.ancestors
#puts MyTruck.ancestors
#puts Vehicle.ancestors
