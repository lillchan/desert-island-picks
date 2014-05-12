class ProfileController < ApplicationController
  def new
  end

  def create
  	@profile = Profile.new(profile_params)

  	if @profile.save
  		redirect_to @profile
  	else
  		render :new
  	end
  end

  def edit
  end

  def show
  	@profile = Profile.find params[:id]
  end

  private
  def profile_params
  	params.require(:profile).permit(:user_id, :movie_id, :app_id, :album_id, :website_id)
  end
end
