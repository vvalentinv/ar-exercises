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
# 1. Add validations to two models to enforce the following business rules:
#   * Employees must always have a first name present
#   * Employees must always have a last name present
#   * Employees have a hourly_rate that is a number (integer) between
#    40 and 200
#   * Employees must always have a store that they belong to (can't 
#     have an employee that is not assigned a store)
#   * Stores must always have a name that is a minimum of 3 characters
#   * Stores have an annual_revenue that is a number (integer) that 
#   must be 0 or more
#   * BONUS: Stores must carry at least one of the men's or women's 
#   apparel (hint: use a [custom validation method]
#     (http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - 
#     **don't** use a `Validator` class)
# 2. Ask the user for a store name (store it in a variable)
# 3. Attempt to create a store with the inputted name but leave out 
# the other fields (annual_revenue, mens_apparel, and womens_apparel)
# 4. Display the error messages provided back from ActiveRecord to 
# the user (one on each line) after you attempt to save/create the 
# record

print 'Enter store name:'
storename = gets.chomp
store7 = Store.create(id: 7, name: storename.to_s)
store7.errors.full_messages
