class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

  def show
  end

  def create
  end
end
