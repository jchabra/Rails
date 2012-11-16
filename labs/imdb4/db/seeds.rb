# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Movie.delete_all
Studio.delete_all
Director.delete_all
Actor.delete_all

s1 = Studio.create(:name => "Universal")
s2 = Studio.create(:name => "Warner Bros")
s3 = Studio.create(:name => "Lionsgate")
s4 = Studio.create(:name => "Sony Pictures")
s5 = Studio.create(:name => "New Line")

m1 = Movie.create(:name => "Finding Nemo")
m2 = Movie.create(:name => "Aladdin")
m3 = Movie.create(:name => "Titanic")
m4 = Movie.create(:name => "Skyfall")
m5 = Movie.create(:name => "Argo")
m6 = Movie.create(:name => "LOTR")

a1 = Actor.create(:name => "Abu")
a2 = Actor.create(:name => "Leonardo DiCaprio")
a3 = Actor.create(:name => "Kate Winslet")
a4 = Actor.create(:name => "Daniel Craig")
a5 = Actor.create(:name => "Nemo")

d1 = Director.create(:name => "Steven Speilberg")
d2 = Director.create(:name => "Jason Reitmen")
d3 = Director.create(:name => "Christopher Nolen")
d4 = Director.create(:name => "Tom Hanks")
d5 = Director.create(:name => "Martin Scorsese")

# s1.movies = [m1, m2]
# s2.movies = [m3, m4, m5]
# s3.movies << m6