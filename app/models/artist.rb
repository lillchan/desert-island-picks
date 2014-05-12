class Artist < ActiveRecord::Base
	has_many :albums
	has_many :profiles, through: :albums
	has_many :users, through: :profiles
end
