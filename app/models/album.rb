class Album < ActiveRecord::Base
	validates :title, presence: true

	has_many :profiles
	has_many :users, through: :profiles
	belongs_to :artist
end
