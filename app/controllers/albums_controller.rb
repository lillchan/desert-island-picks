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
  end

  private

  def load_album
  	@album = Album.find(params[:id])
  end
end
