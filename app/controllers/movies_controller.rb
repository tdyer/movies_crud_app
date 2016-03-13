class MoviesController < ApplicationController

  # GET /movies
  def index
    # create an instance variable, @movies, that
    # will have all the movies stored in the DB.
    @movies = Movie.all

    # By default will render the app/views/movies/index.html.erb
    # file
  end
end
