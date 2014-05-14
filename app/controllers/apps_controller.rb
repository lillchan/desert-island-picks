class AppsController < ApplicationController
	before_action :load_app, only: [:edit, :show, :update]

	def index
		@apps = App.all
	end

  def show
  end

  def create
  end

  private

  def load_app
  	@app = App.find(params[:id])
  end
end
