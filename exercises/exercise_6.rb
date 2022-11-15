require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
    has_many :employees
end 
class Employee
    belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "jabby", last_name: "Virani", hourly_rate: 610)
@store2.employees.create(first_name: "jibby", last_name: "Virani", hourly_rate: 30)
@store2.employees.create(first_name: "bobby", last_name: "Virani", hourly_rate: 260)
@store2.employees.create(first_name: "billy", last_name: "Virani", hourly_rate: 630)
