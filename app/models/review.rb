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
  belongs_to :user

  validates :content, presence: true
end
