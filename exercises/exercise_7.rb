require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, numericality: { in: 50..100 }
    validates :store_id, presence: true
end
class Store
    validates :name, length: {minimum: 3}
    validates :annual_revenue, numericality: {only_integer:true, greater_than: 0}
    validate :must_have_one_genders_clothes
    def must_have_one_genders_clothes
        errors.add('must have a type of clothing being sold')  if !(mens_apparel || womens_apparel)
    end 
end

Gastownn = Store.create!(name:'g')
@store2.employees.create!(first_name:'bingus', last_name: "Virani", hourly_rate: 6000)
