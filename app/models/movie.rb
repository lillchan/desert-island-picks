class Movie < ActiveRecord::Base
	has_many :users
	has_ony :director
end
