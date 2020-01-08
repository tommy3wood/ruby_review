class Vehicle
    def initialize(input_options)
    @speed = 0
    @direction = 'north'
    @tires = input_options[:tires]
  end

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

class Car < Vehicle

  def initialize (input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  def initialize (input_options)
    super
    @gears = input_options[:gears]
    @weight = input_options[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new(
              tires: "snow",
              fuel: "regular",
              make: "Honda",
              model: "CRV"
              )
bike = Bike.new(
              tires: "road",
              gears: "fixed",
              weight: "100 grams?"
              )


car.honk_horn
bike.ring_bell
bike.turn("HARD LEFT")
p bike
p car 