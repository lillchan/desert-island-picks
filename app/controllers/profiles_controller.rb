class ProfilesController < ApplicationController
  def show
  	@profile = Profile.find params[:id]
  end

  def new
  end

  def create
  	@profile = current_user.profile.build profile_params

    if @profile.save
      redirect_to @profile
    else
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:app_id, :movie_id, :album_id, :website_id)
  end
end
