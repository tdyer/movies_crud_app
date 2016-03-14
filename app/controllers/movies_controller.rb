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

  # GET /movies/new
  def new
    # Create Movie object, need by the form_for helper
    # in the view
    @movie = Movie.new
  end

  # POST /movies
  def create
    # Create a new movie from the params hash
    @movie = Movie.new(movie_params)

    # Dispatch to the code to build the correct Resource Representation.
    respond_to do |format|

      if @movie.save
        # save succeeded! Send a HTTP Redirect to the /movies/:id
        format.html { redirect_to movie_path(@movie), notice: 'Movie created' }
        # save succeeded! Send a HTTP status of 201 Created in the Response
        format.json { render :show, status: :created, location: @movie }
      else
        # save failed! show the form again.
        format.html {render :new}
        # save failed! show the json representation of the song errors.
        # Send a HTTP status of 422 Uprocessable Entity in the Response
        format.json {render json: @song.errors, status: :unprocessable_enitity }
      end
    end
  end

  # GET /movies/:id/edit
  def edit
    # Find the movie to update
    @movie = Movie.find(params[:id])
  end

  # PATCH /movies/:id
  def update
    # Find the movie to update
    @movie = Movie.find(params[:id])

    respond_to do |format|

      if @movie.update(movie_params)
        format.html { redirect_to movie_path(@movie), notice: 'Successfully updated the movie' }
        format.json { render :show, status: :ok, location: movie_path(@movie) }
      else
        format.html { render :edit } # show the edit form again
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Enforces strong parameter. Limit what attributes/columns can be set in the
  # movies table.
  def movie_params
    params.require(:movie).permit(:name, :desc, :rating, :released_year, :length)
  end
end
