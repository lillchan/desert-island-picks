class AppsController < ApplicationController
	before_action :load_app, only: :show

	def index
		@apps = App.all
	end

  def new
    @app = App.new
  end

  def show
  end

  def create
    @app = App.new(safe_app_params)
    if @app.save
      redirect_to @app
    else
      render 'new'
    end
  end

  private

  def load_app
  	@app = App.find(params[:id])
  end

  def safe_app_params
    params.require('app').permit(:name)
  end
end
