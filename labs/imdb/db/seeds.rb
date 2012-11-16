# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Movie.create(:name => "Skyfall", :description => "James Bond", :rating => "NC-17")
Movie.create(:name => "Goldenfinger", :description => "James Bond I", :rating => "G")
Movie.create(:name => "James Bond I", :description => "James Bond II", :rating => "PG-13")
Movie.create(:name => "Bourne Ultimatum", :description => "Jason Bourne", :rating => "R")
Movie.create(:name => "The Shining", :description => "Nickelson", :rating => "NC")

Director.create(:name => "Spilberg", :age => 60, gender => "male")
Director.create(:name => "Soderberg", :age => 40, gender => "male")
Director.create(:name => "Sophia", :age => 35, gender => "female")

Actor.create(:name => "Megan Fox", :gender => "female")
Actor.create(:name => "Scarlotte Johannsen", :gender => "female")
Actor.create(:name => "Brad Pitt", :gender => "male") 
