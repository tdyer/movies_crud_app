class ReviewsController < ApplicationController

  # Restrict access. Only signed in users can access actions
  before_action :authenticate_user!, except: [:index]

  # set the @movie instance variable before each action
  before_action :set_movie

  # GET /movies/:movie_id/reviews
  def index
    # Show all the reviews for a movie.
    @reviews = @movie.reviews
  end

  # GET /movies/:movie_id/review/:id
  def show
    # Find a review for a movie.
    @review = @movie.reviews.find(params[:id])
  end

  # GET /movies/:movie_id/reviews/new
  def new
    # create an empty review, no attributes, for a movie.
    # empty review is needed by the form_for helper
    @review = @movie.reviews.new
  end

  # POST /movies/:movie_id/reviews
  def create
    # create a review for a movie
    # the params hash will have the review attributes
    @review = @movie.reviews.new(review_params)

    if @review.save
      # Success, saved the movie review.
      redirect_to movie_reviews_path(@movie), notice: 'Created a Review'
    else
      # Oops, failed to create the review
      render :new
    end
  end

  private

  # set the @movie instance variable from
  # movie id in the params hash
  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def review_params
    params.require(:review).permit(:content, :email)
  end

end
