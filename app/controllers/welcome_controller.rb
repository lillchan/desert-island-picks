class WelcomeController < ApplicationController
	before_action :authenticate_user!

  def index
    if current_user.profile
      @user_id = current_user.id
      redirect_to "/profiles/#{@user_id}"
    else
      @profile = Profile.new
      @apps = App.all.collect { |app| [app.name, app.id] }
      @movies = Movie.all.collect { |movie| ["#{movie.name} by #{movie.director.name}", movie.id] }
      @albums = Album.all.collect { |album| ["#{album.title} by #{album.artist.name}", album.id] }
      @websites = Website.all.collect { |website| [website.name, website.id] }
      render new_profile_path
    end
  end
end
