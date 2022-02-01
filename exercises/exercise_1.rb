require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
Store.create(id: 1, name: 'Burnaby', annual_revenue: 300_000, mens_apparel: true, 
  womens_apparel: true, created_at: Time.new, updated_at: Time.new)
Store.create(id: 2, name: 'Richmond', annual_revenue: 1_260_000, mens_apparel: false, 
   womens_apparel: true, created_at: Time.new, updated_at: Time.new)
Store.create(id: 3, name: 'Gastown', annual_revenue: 190_000, mens_apparel: true, 
     womens_apparel: false, created_at: Time.new, updated_at: Time.new)
# store = Store.new
# store.name = 'Burnaby'
# store.annual_revenue = 300000
# store.mens_apparel = true
# store.womens_apparel = true
# store.created_at = Time.new
# store.touch
# store.save
puts 'count: ', Store.count
