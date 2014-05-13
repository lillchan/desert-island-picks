class WebsitesController < ApplicationController
	def index
		@websites = Website.all
	end

  def show
  end

  def create
  end
end
