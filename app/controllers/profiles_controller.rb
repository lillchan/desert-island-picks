class ProfilesController < ApplicationController
  def show
  	@profile = Profile.find params[:id]
  end

  def new
  end

  def create
  	@profile = Profile.new(profile_params)

    if @profile.save
      current_user.profile = @profile
      redirect_to @profile
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:app_id, :movie_id, :album_id, :website_id, :user_id)
  end
end
