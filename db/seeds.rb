# Delete All Existing Movies
Review.delete_all
Movie.delete_all

User.delete_all

# Create three movies
# NOTE: the create! method will create a row in the movies table.
# In this case the create! method will take one argument, a Hash of key/values
# pairs where the key is the column and the value is the data for this row.
m1 = Movie.create!(name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123, released_year: 1997)
m2 = Movie.create!(name: 'Mad Max', rating: 'R', desc: 'Fun, action', length: 154, released_year: 2015)
m3 = Movie.create!(name: 'Rushmore', rating: 'PG-13', desc: 'Quirky humor', length: 105, released_year: 1998)

puts "Created three Movies"

moe = User.create!(email: 'moe@foo.com', password: 'password', password_confirmation: 'password', first_name: 'Moe', last_name: 'Howard', admin: false)
larry = User.create!(email: 'larry@foo.com', password: 'password', password_confirmation: 'password', first_name: 'Larry', last_name: 'Fine', admin: false)
curly = User.create!(email: 'curly@foo.com', password: 'password', password_confirmation: 'password', first_name: 'Curly', last_name: 'Howard', admin: false)

# Create an admin user
tom = User.create!(email: 'tom@foo.com', password: 'password', password_confirmation: 'password', first_name: 'Tom', last_name: 'Jones', admin: true)

puts 'Created a couple of Users'

# Create a couple of movie reviews
m2.reviews.create!(content: 'Great fun', user: moe)
m1.reviews.create!(content: 'Boring, ho hum', user: larry)
m3.reviews.create!(content: 'Funny, ha', user: curly)
m2.reviews.create!(content: 'Action packed', user: larry)
m1.reviews.create!(content: 'Somber, yet interesting', user: curly)

puts "Create a couple of movie reviews"
