class WebsitesController < ApplicationController
	before_action :load_website, only: [:edit, :show, :update]

	def index
		@websites = Website.all
	end

  def new
    @website = Website.new
  end

  def show
  end

  def create
    @website = Website.new(safe_website_params)
    if @website.save
      redirect_to @website
    else
      render 'new'
    end
  end

  private

  def load_website
  	@website = Website.find(params[:id])
  end

  def safe_website_params
    params.require('website').permit(:name)
  end
end
