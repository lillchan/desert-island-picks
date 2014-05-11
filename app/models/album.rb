class Album < ActiveRecord::Base
	has_many :users
	has_one :artist
end
