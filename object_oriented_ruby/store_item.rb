# car_1 = {make: "buick", model: "riviara", color: "red", price: 3000, year: 1991, stock: true}
# car_2 = {:make => "Tesla", :model => "space truck thing", :color => "blue", :price => 67000, :year => 2020, :stock => false}
# car_3 = {:make => "Toyota", :model => "prius", :color => "grey", :price => 25000, :year => 2015, :stock => true}

# puts "In #{ car_1[:year] } #{ car_1[:make] } created the #{ car_1[:model] }. Today it can be had at police auctions for a modest #{ car_1[:price]}"
# puts "The hottest #{ car_2[:make] } on the markey is the #{ car_2[:model] }, I guess. It's going to set you back #{ car_2[:price]}"
# puts "An economic and green option is the classic #{ car_3[:model]}. A used #{ car_3[:year]} model will probably set you back #{ car_3[:price]}."

class Car
  attr_reader :make, :model, :year, :price
  attr_writer :price

  def initialize(make, model, color, price, year, stock)
    @make = make
    @model = model
    @color = color
    @price = price 
    @year = year
    @stock = stock
  end

  def price=(new_price)
    @price = new_price
  end

  def print_info
    p "this #{make} #{model} was manufactured in #{year} and CBB says it runs about #{price}"
    
  end

end

car_1 = Car.new("buick", "riviara", "red", 3000, 1991, true)
car_2 = Car.new("Tesla", "space truck thing", "blue", 67000, 2020, false)
car_3 = Car.new("Toyota", "prius", "grey", 25000, 2015, true)

car_1.print_info
p car_2.model
p car_3.price
p car_3
puts "=" * 40
p "PRIUS SALE"
puts "=" * 40
car_3.price = 15000
p car_3