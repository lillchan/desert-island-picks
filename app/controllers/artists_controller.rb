class ArtistsController < ApplicationController
  def index
  	@artists = Artist.all
  end

  def show
  	@artist = Artist.find(params[:id])
  end

  def new
  	@artist = Artist.new
  end

  def create
  	@artist.new(safe_artist_params)
  	if @artist.save
  		redirect_to @artist
  	else
  		render 'new'
  	end
  end

  private

  def safe_artist_params
  	params.require('artist').permit(:name)
  end
end
