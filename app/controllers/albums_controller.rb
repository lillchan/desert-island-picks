class AlbumsController < ApplicationController
	def index
		@albums = Album.all
	end

  def show
  end

  def create
  end
end
