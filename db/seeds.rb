# Delete All Existing Movies
Review.delete_all
Movie.delete_all

# Create three movies
# NOTE: the create! method will create a row in the movies table.
# In this case the create! method will take one argument, a Hash of key/values
# pairs where the key is the column and the value is the data for this row.
m1 = Movie.create!(name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123, released_year: 1997)
m2 = Movie.create!(name: 'Mad Max', rating: 'R', desc: 'Fun, action', length: 154, released_year: 2015)
m3 = Movie.create!(name: 'Rushmore', rating: 'PG-13', desc: 'Quirky humor', length: 105, released_year: 1998)

puts "Created three Movies"

# Create a couple of movie reviews
m2.reviews.create!(content: 'Great fun', email: 'moe@foo.com')
m1.reviews.create!(content: 'Boring, ho hum', email: 'larry@foo.com')
m3.reviews.create!(content: 'Funny, ha', email: 'curly@foo.com')
m2.reviews.create!(content: 'Action packed', email: 'larry@foo.com')
m1.reviews.create!(content: 'Somber, yet interesting', email: 'curly@foo.com')

puts "Create a couple of movie reviews"
