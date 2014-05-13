class AppsController < ApplicationController
	def index
		@apps = App.all
	end

  def show
  end

  def create
  end
end
