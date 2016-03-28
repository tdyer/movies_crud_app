class ReviewsController < ApplicationController

  before_action :set_movie

  def index
    @reviews = @movie.reviews
  end

  def show
    # Show one review for a movie.
    @review = @movie.reviews.find(params[:id])
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
