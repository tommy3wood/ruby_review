require_relative "./employee.rb"
require_relative "./reportable.rb"

class Manager < Employee
  include Reportable
  attr_reader :employees

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    # employees.each do |employee|
    #   employee.give_annual_raise
    # end
    employees.each { |employee| employee.give_annual_raise }
  end

  def fire_all_employees
    # employees.each do |employee|
    #   employee.active = false
    # end

    employees.each { |employee| employee.active = false }
  end

end