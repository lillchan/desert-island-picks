class WelcomeController < ApplicationController
	before_action :authenticate_user!

  def index
    if current_user.profile
      @user_id = current_user.id
      redirect_to "/profiles/#{@user_id}"
    else
      @profile = Profile.new
      @user_id = current_user.id
      @apps = App.all.collect { |app| [app.name, app.id] }
      @movies = Movie.all.collect { |movie| [movie.name, movie.id] }
      @albums = Album.all.collect { |album| [album.title, album.id] }
      @websites = Website.all.collect { |website| [website.name, website.id] }
      render new_profile_path
    end
  end
end
