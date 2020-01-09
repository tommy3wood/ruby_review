require_relative "./product.rb"
require_relative "./marketprice.rb"

module StoreFront
  class Food < Product
    include MarketPrice
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
end