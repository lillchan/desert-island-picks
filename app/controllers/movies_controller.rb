class MoviesController < ApplicationController
	before_action :load_movie, only: [:edit, :show, :update]

	def index
		@movies = Movie.all
	end

  def show
  end

  def new
    @movie = Movie.new
    @directors = Director.all.collect { |director| [director.name, director.id] }
  end

  def create
    @movie = Movie.new(safe_movie_params)
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  private

  def load_movie
  	@movie = Movie.find(params[:id])
  end

  def safe_movie_params
    params.require('movie').permit(:name, :director_id)
  end
end
