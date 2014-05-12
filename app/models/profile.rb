class Profile < ActiveRecord::Base
	belongs_to :user
	belongs_to :app
	belongs_to :movie
	belongs_to :album
	belongs_to :website
end
