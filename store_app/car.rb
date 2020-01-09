require_relative "./product.rb"
require_relative "./marketprice.rb"

module StoreFront
  class Car < Product
    include MarketPrice
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

    def print_info
      p "this #{make} #{model} was manufactured in #{year} and CBB says it runs about #{price}"
    end
  end
end