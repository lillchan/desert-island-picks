class Movie < ActiveRecord::Base	
	has_many :profiles
	has_many :users, through: :profiles
	belongs_to :director
end
