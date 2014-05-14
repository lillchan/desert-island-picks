App.delete_all
Director.delete_all
Movie.delete_all
Artist.delete_all
Album.delete_all
Website.delete_all

puts 'Adding seed apps'
App.create! name: 'Twitter'
App.create! name: 'Facebook'
App.create! name: 'Instagram'
App.create! name: 'Foursquare'
App.create! name: 'Snapchat'

puts 'Adding seed directors'
director1 = Director.create! name: 'Hayao Miyazaki'
director2 = Director.create! name: 'Wes Anderson'
director3 = Director.create! name: 'Woody Allen'

puts 'Adding seed movies'
Movie.create!(:name =>'My Neighbor Totoro', :director => director1)
Movie.create!(:name => 'Moonrise Kingdom', :director => director2)
Movie.create!(:name =>'Midnight in Paris', :director => director3)

puts 'Adding seed artists'
artist1 = Artist.create! name: 'Lucius'
artist2 = Artist.create! name: 'RAC'
artist3 = Artist.create! name: 'Empire of the Sun'

puts 'Adding seed albums'
Album.create!(:title => 'Wildewoman', :artist => artist1)
Album.create!(:title => 'Chapter One', :artist => artist2)
Album.create!(:title => 'Walking on a Dream', :artist => artist3)

puts 'Adding seed websites'
Website.create name: 'The New York Times'
Website.create name: 'YouTube'
Website.create name: 'Wikipedia'

