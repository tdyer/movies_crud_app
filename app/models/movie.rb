# == Schema Information
#
# Table name: movies
#
#  id            :integer          not null, primary key
#  name          :string
#  rating        :string
#  desc          :text
#  length        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  released_year :integer
#

class Movie < ActiveRecord::Base

  # The movie may have reviews
  has_many :reviews, dependent: :destroy

  # The users that have reviewed movies
  has_many :users, through: :reviews

  RATINGS = ['G', 'PG', 'PG-13', 'R', 'NC-17']

  # validate that this movie has a name
  validates :name, presence: true
  # name must be between 2 and 30 characters
  validates :name, length: {minimum: 2, maximum: 30}
  # name must unique within a specific year!
  validates :name, uniqueness: {scope: :released_year, message: "There already is a movie of this name, %{value}, for this year. " }

  # validate that the rating must be one of values in the
  # RATINGS constant.
  validates :rating, inclusion: { in: RATINGS, message: "%{value} is not a MPAA rating" }

  # validate that the length of the move is between 3 and 300 minutes.
  validates :length, numericality: {greater_than: 2, less_than: 301 }

  # validate the released year
  validates :released_year, inclusion: { in: 1910..Date.today.year, message: "%{value} is not a valid release year, it must be between 1910 and #{Date.today.year}" }

end
