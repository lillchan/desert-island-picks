class AlbumsController < ApplicationController
	before_action :load_album, only: [:edit, :show, :update]

	def index
		@albums = Album.all
	end

  def show
  end

  def new
    @album = Album.new
    @artists = Artist.all.collect { |artist| [artist.name, artist.id] }
  end

  def create
    @album = Album.new(safe_album_params)
    if @album.save
      redirect_to @album
    else
      render 'new'
    end
  end

  private

  def load_album
  	@album = Album.find(params[:id])
  end

  def safe_album_params
    params.require('album').permit(:title, :artist_id)
  end
end
