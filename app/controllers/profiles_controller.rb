class ProfilesController < ApplicationController
  before_action :load_profile, only: [:edit, :show, :update]
  before_action :load_associated, only: [:edit, :new]

  def show
  end

  def new
    @profile = Profile.new
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

  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render 'edit'
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:app_id, :movie_id, :album_id, :website_id)
  end

  def load_profile
    @profile = Profile.find(params[:id])
  end

  def load_associated
    @apps = App.all.collect { |app| [app.name, app.id] }
    @movies = Movie.all.collect { |movie| ["#{movie.name} by #{movie.director.name}", movie.id] }
    @albums = Album.all.collect { |album| ["#{album.title} by #{album.artist.name}", album.id] }
    @websites = Website.all.collect { |website| [website.name, website.id] }
  end
end
