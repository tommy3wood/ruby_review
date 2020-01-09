module Reportable
  def send_report
    puts "Sending Email..."
    # code to send Email
    puts "Email sent."
  end
end

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ first_name } #{ last_name } makes #{ salary } a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

end

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

class Intern < Employee

  include Reportable

end

employee_1 = Employee.new(
                          first_name: "Han", 
                          last_name: "Solo", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Lando", 
                          last_name: "Calrissian", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Leia",
                      last_name: "Organa",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

intern = Intern.new(
                    first_name: "Jarjar",
                    last_name: "Binx", 
                    salary: 35000,
                    active: true
                    )

intern.send_report
manager.send_report
employee_1.send_report