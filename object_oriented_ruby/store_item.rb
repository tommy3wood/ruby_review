class Car
  attr_reader :make, :model, :year, :price
  attr_writer :price

  def initialize(input_options)
    @make = input_options[:first_name]
    @model = input_options[:model]
    @color = input_options[:color]
    @price = input_options[:price]
    @year = input_options[:year]
    @stock = input_options[:stock]
    
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
                first_name: "Tesla", 
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