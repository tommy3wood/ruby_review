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
    puts "#{ first_name } #{ last_name } makes #{ salary } per year."
  end 

  def give_annual_raise
    @salary = @salary * 1.05
  end

end


class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super(input_options) #1({first_name: input_options[:first_name], last_name: input_options[:last_name]}) running this line after super method tells computer to only bring down specific input_options
    #2the super method calls down the attributes from the common elements in parent class (in this situation it passes down all arguments from Employee and allows you to ammend employee for Manager)
    @employee = input_options[:employees]
  end

  def send_report
    puts "sending email..."
    #code to send email
    puts "Email sent"
  end

end

employee_1 = Employee.new(
                          first_name: "Dave", 
                          last_name: "Thomas", 
                          salary: 79000, 
                          active: false
                          )
employee_2 = Employee.new(
                          first_name: "Han", 
                          last_name: "Solo", 
                          salary: 24000, 
                          active: true
                          )


manager = Manager.new(
                      first_name: "Leia",
                      last_name: "Organa",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
employee_1.print_info
employee_2.print_info
employee_1.give_annual_raise
employee_2.print_info

p employee_1.first_name
employee_1.first_name = "Bob"
p employee_1.first_name

p manager
manager.send_report