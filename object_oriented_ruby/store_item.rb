class Product
  def initialize(input_options)
    @price = input_options[:price]
    @year = input_options[:year]
    @stock = input_options[:stock]
  end
end

class Food < Product
  def initialize(input_options)
    super
    @protien = input_options[:protien]
    @vegetable = input_options[:vegetable]
    @starch = input_options[:starch]
  end

  def shelf_life
    if @year < 2020
      puts "SOMETHING STINKS"
    else
      puts "SO FRESH"
    end
  end

end

class Car < Product
  attr_reader :make, :model, :year, :price
  attr_writer :price

  def initialize(input_options)
    super
    @make = input_options[:make]
    @model = input_options[:model]
    @color = input_options[:color]
  end

  def opposite_day_sale
    @price = @price * 1.2
  end

  def price=(new_price)
    @price = new_price
  end

  def print_info
    p "this #{make} #{model} was manufactured in #{year} and CBB says it runs about #{price}"
  end



end

car_1 = Car.new(
                make: "buick", 
                model: "riviara", 
                color: "red", 
                price: 3000, 
                year: 1991, 
                stock: true
                )
car_2 = Car.new(
                make: "Tesla", 
                model: "space truck thing", 
                color: "blue", 
                price: 67000, 
                year: 2020, 
                stock: false
                )
car_3 = Car.new(
                make: "Toyota", 
                model: "prius", 
                color: "grey", 
                price: 25000, 
                year: 2015, 
                stock: true
                )
food_1 = Food.new(
                protien: "Round chuck", 
                vegetable: "Green beans", 
                starch: "Idaho Golds", 
                price: 13.50, 
                year: 2019, 
                stock: true
                )


car_1.print_info
p car_2.model

puts "=" * 30
p car_2
car_2.opposite_day_sale
p car_2
puts "=" * 30
p "PRIUS FLASH SALE"
puts "=" * 30
car_3.price = 15000
p car_3
puts "=" * 30
puts "Grocery ORDER"
puts "=" * 30
p food_1
food_1.shelf_life