class MoviesController < ApplicationController

  # GET /movies
  def index
    # create an instance variable, @movies, that
    # will have all the movies stored in the DB.
    @movies = Movie.all

    # By default will render the app/views/movies/index.html.erb
    # file
    respond_to do |format|
      format.html
      format.json { render json: @movies }
    end
  end

  # GET /movies/:id
  def show
    @movie = Movie.find(params[:id])

    # Handle multiple representations, (html, json, ...)
    # By default render HTML representation
    respond_to do |format|
      format.html # render app/views/movies/show.html.erb template
      format.json { render json: @movie }
    end
  end
end
