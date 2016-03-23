class MyCar
  # Getter/Setter
  attr_accessor :year, :color, :model, :crt_speed
  
  # Contructor
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model.capitalize
    @crt_speed = 0
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
  
  def show_car
    "This #{color} #{model} is from #{year}." 
  end
  
  def to_s # User friendly print out of your object.
    "This #{color} #{model} is from #{year}, its current speed is #{crt_speed}."
  end
  
  def show_speed
    "Its current speed is #{crt_speed}mp/h"
  end
  
  def self.gas_mileage(gallons, miles)                # Class method
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

car = MyCar.new(1999, "white", "toyota")
puts car.show_car
car.spray_paint("rEd")
puts car.show_car
car.speed_up(60)
puts car.show_speed
car.brake(20)
puts car.show_speed
car.turn_off
puts car.show_speed
puts MyCar.gas_mileage(10, 350)
puts car