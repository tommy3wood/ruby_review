module StoreFront
  class Product
    def initialize(input_options)
      @price = input_options[:price]
      @year = input_options[:year]
      @stock = input_options[:stock]
    end
  end
end