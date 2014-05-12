class WelcomeController < ApplicationController
	before_action :authenticate_user!

  def index
  	@profile = Profile.new
    @user_id = current_user.id
  	@apps = App.all.collect { |app| [app.name, app.id] }
  	@movies = Movie.all.collect { |movie| [movie.name, movie.id] }
  	@albums = Album.all.collect { |album| [album.name, album.id] }
  	@websites = Website.all.collect { |website| [website.name, website,id] }
  	@directors = Director.all.collect { |director| [director.name, director.id] }
  	@artists = Artist.all.collect { |artist| [artist.name, artist.id] }
  end
end
