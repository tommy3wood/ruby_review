require_relative "./product.rb"

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