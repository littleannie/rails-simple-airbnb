puts "Destroy previous seeds"
Flat.destroy_all

puts "Creating new seeds with Faker"

puts "Ceating some flats"

20.times do
  flat = Flat.create!(
    name: Faker::TvShows::Friends.location,
    address: Faker::Address.full_address,
    description: Faker::Restaurant.description,
    price_per_night: rand(50..100),
    number_of_guests: rand(1..10),
    picture_url: 'https://images.unsplash.com/photo-1591825729269-caeb344f6df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
  )
  puts "Your flat : #{flat.name} has been created"
end
