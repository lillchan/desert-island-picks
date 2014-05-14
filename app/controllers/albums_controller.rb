class AlbumsController < ApplicationController
	before_action :load_album, only: [:edit, :show, :update]

	def index
		@albums = Album.all
	end

  def show
  end

  def create
  end

  private

  def load_album
  	@album = Album.find(params[:id])
  end
end
