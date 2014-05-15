class DirectorsController < ApplicationController
  def index
  	@directors = Director.all
  end

  def show
  	@director = Director.find(params[:id])
  end

  def new
  	@director = Director.new
  end

  def create
  	@director = Director.new(safe_director_params)
  	if @director.save
  		redirect_to @director
  	else
  		render 'new'
  	end
  end

  private

  def safe_director_params
  	params.require('director').permit(:name)
  end
end
