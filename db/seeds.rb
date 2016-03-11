# Delete All Existing Movies
Movie.delete_all

# Create three movies
# NOTE: the create! method will create a row in the movies table.
# In this case the create! method will take one argument, a Hash of key/values
# pairs where the key is the column and the value is the data for this row.
Movie.create!(name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123)
Movie.create!(name: 'Mad Max', rating: 'R', desc: 'Fun, action', length: 154)
Movie.create!(name: 'Rushmore', rating: 'PG-13', desc: 'Quirky humor', length: 105)

puts "Created three Movies"
