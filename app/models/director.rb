class Director < ActiveRecord::Base
	has_many :movies
	has_many :profiles, through: :movies
	has_many :users, through: :profiles
end
