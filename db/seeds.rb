App.delete_all
Director.delete_all
Movie.delete_all
Artist.delete_all
Album.delete_all
Website.delete_all

puts 'Adding seed apps'
App.create name: 'Twitter'
App.create name: 'Facebook'
App.create name: 'Instagram'
App.create name: 'Foursquare'
App.create name: 'Snapchat'

puts 'Adding seed directors'
Director.create name: 'Hayao Miyazaki'
Director.create name: 'Wes Anderson'
Director.create name: 'Woody Allen'

puts 'Adding seed movies'
Movie.create name: 'My Neighbor Totoro', director_id: 1
Movie.create name: 'Moonrise Kingdom', director_id: 2
Movie.create name: 'Midnight in Paris', director_id: 3

puts 'Adding seed artists'
Artist.create name: 'Lucius'
Artist.create name: 'RAC'
Artist.create name: 'Empire of the Sun'

puts 'Adding seed albums'
Album.create name: 'Wildewoman', artist_id: 1
Album.create name: 'Chapter One', artist_id: 2
Album.create name: 'Walking on a Dream', artist_id: 3

puts 'Adding seed websites'
Website.create name: 'The New York Times'
Website.create name: 'YouTube'
Website.create name: 'Wikipedia'

