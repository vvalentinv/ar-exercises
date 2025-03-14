require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
### Exercise 4: Loading a subset of stores

# 1. Borrowing and modifying the code from Exercise one, create 3 more stores:
#   * Surrey (annual_revenue of 224000, carries women's apparel only)
#   * Whistler (annual_revenue of 1900000 carries men's apparel only)
#   * Yaletown (annual_revenue of 430000 carries men's and women's apparel)
# 2. Using the `where` class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable `@mens_stores`.
# 3. Loop through each of these stores and output their name and annual revenue on each line.
# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

Store.create(id: 4, name: 'Yaletown', annual_revenue: 430_000, mens_apparel: true, 
  womens_apparel: true, created_at: Time.new, updated_at: Time.new)
Store.create(id: 5, name: 'Surrey', annual_revenue: 224_000, mens_apparel: false, 
   womens_apparel: true, created_at: Time.new, updated_at: Time.new)
Store.create(id: 6, name: 'Whistler', annual_revenue: 1_900_000, mens_apparel: true, 
     womens_apparel: false, created_at: Time.new, updated_at: Time.new)

     @mens_stores =  Store.where(mens_apparel: true, womens_apparel: false)
     @mens_stores.each do |s|
      puts "#{s.name}       #{s.annual_revenue}"
     end
     @women_stores =  Store.where(mens_apparel: false, womens_apparel: true)
     @women_stores.each do |s|
      if s.annual_revenue > 1000000
        puts "#{s.name}       #{s.annual_revenue}"
      end
     end
