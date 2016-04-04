# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  content    :string
#  email      :string
#  movie_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ActiveRecord::Base
  belongs_to :movie

  validates :content, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
