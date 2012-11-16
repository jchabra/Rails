class MoviesController < ApplicationController
	def index
		@movies = Movie.all #an array of movie objects; since it's an instance variable, it's available in our view
	end
	def new
	end
	def create
	  poster = params[:poster]
	  movie_name = params[:name] #select the name from the params
	  Movie.create(:name => movie_name, :poster => poster) #created a new movie
	  redirect_to movies_path #put in the movies doc and go there as soon as the user types in a movie name
	end
	def destroy
	  movie = Movie.find(params[:id]) #params is the hash; id is the key
   	  movie.delete
   	  redirect_to movies_path #movies_path is the index page (home)
	end
end