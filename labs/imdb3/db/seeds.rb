# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Movie.delete_all
Studio.delete_all

s1 = Studio.create(:name => "Universal", :budget => 3, :address => "Hollywood")
s2 = Studio.create(:name => "Warner Bros", :budget => 5, :address => "Hollywood")
s3 = Studio.create(:name => "Lionsgate", :budget => 7, :address => "Hollywood")
s4 = Studio.create(:name => "Sony Pictures", :budget => 8, :address => "Hollywood")
s5 = Studio.create(:name => "New Line", :budget => 9, :address => "Hollywood")

m1 = Movie.create(:name => "Finding Nemo", :gross => 9, :rating => "G")
m2 = Movie.create(:name => "Aladdin", :gross => 10, :rating => "G")
m3 = Movie.create(:name => "Titanic", :gross => 11, :rating => "R")
m4 = Movie.create(:name => "Skyfall", :gross => 12, :rating => "PG-13")
m5 = Movie.create(:name => "Argo", :gross => 13, :rating => "NC-17")
m6 = Movie.create(:name => "LOTR", :gross => 14, :rating => "R")

s1.movies = [m1, m2]
s2.movies = [m3, m4, m5]
s3.movies << m6