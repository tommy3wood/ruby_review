# car_1 = {make: "buick", model: "riviara", color: "red", price: 3000, year: 1991, stock: true}
# car_2 = {:make => "Tesla", :model => "space truck thing", :color => "blue", :price => 67000, :year => 2020, :stock => false}
# car_3 = {:make => "Toyota", :model => "prius", :color => "grey", :price => 25000, :year => 2015, :stock => true}

# puts "In #{ car_1[:year] } #{ car_1[:make] } created the #{ car_1[:model] }. Today it can be had at police auctions for a modest #{ car_1[:price]}"
# puts "The hottest #{ car_2[:make] } on the markey is the #{ car_2[:model] }, I guess. It's going to set you back #{ car_2[:price]}"
# puts "An economic and green option is the classic #{ car_3[:model]}. A used #{ car_3[:year]} model will probably set you back #{ car_3[:price]}."

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