class MoviesController < ApplicationController
	before_action :load_movie, only: [:edit, :show, :update]

	def index
		@movies = Movie.all
	end

  def show
  end

  def create
  end

  private

  def load_movie
  	@movie = Movie.find(params[:id])
  end
end
