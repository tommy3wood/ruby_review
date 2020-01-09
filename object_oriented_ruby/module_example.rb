module Movable
   def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Movable
  def initialize(input_options)
    @speed = 0
    @direction = 'north'
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Movable
  def initialize(input_options)
    @speed = 0
    @direction = 'north'
    @gears = input_options[:gears]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(
              fuel: "Diesel",
              make: "Honda",
              model: "Civic"
              )
bike = Bike.new(
                gears: "fixed",
                weight: "light"
                )

p bike
bike.turn("left")
p bike 
puts "=" * 30
p car
car.accelerate
p car