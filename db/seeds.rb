# Delete All Existing Movies
Movie.delete_all

# Create three movies
# NOTE: the create! method will create a row in the movies table.
# In this case the create! method will take one argument, a Hash of key/values
# pairs where the key is the column and the value is the data for this row.
Movie.create!(name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123, released_year: 1997)
Movie.create!(name: 'Mad Max', rating: 'R', desc: 'Fun, action', length: 154, released_year: 2015)
Movie.create!(name: 'Rushmore', rating: 'PG-13', desc: 'Quirky humor', length: 105, released_year: 1998)

puts "Created three Movies"
