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
  RATINGS = ['G', 'PG', 'PG-13', 'R', 'NC-17']
end
