puts "Started seed"
puts "Emptying DB!"

Restaurant.destroy_all

categories = %w(chinese italian japanese french belgian)

10.times do
  resto = Restaurant.new(name: Faker::Food.ingredient, phone: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address, category: categories.sample)

  puts "#{resto.name} saved!" if resto.save
end

puts "Seeding finished!"
