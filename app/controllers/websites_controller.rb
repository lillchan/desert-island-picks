class WebsitesController < ApplicationController
	before_action :load_website, only: [:edit, :show, :update]

	def index
		@websites = Website.all
	end

  def show
  end

  def create
  end

  private

  def load_website
  	@website = Website.find(params[:id])
  end
end
