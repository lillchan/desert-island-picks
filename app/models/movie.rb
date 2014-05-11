class Movie < ActiveRecord::Base
	has_many :users
	has_one :director
end
