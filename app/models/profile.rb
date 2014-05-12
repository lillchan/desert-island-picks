class Profile < ActiveRecord::Base
	belongs_to :user
	has_one :app
	has_one :movie
	has_one :album
	has_one :website
end
