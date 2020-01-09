require_relative "./employee.rb"
require_relative "./manager.rb"
require_relative "./intern.rb"

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
p employee_1
p manager.