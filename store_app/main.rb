require_relative "./product.rb"
require_relative "./food.rb"
require_relative "./car.rb"

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