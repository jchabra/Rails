class AnimalsController < ApplicationController
	def index
		@animals = Animal.all
	end
	def show
		animal_id = params[:id]
		@animal = Animal.find(animal_id)
	end
	def new
		@animal = Animal.new
	end
	def edit
		@animal = Animal.find(params[:id]) #find the id that was in the url and put it in here
	end
	def create
		@animal = Animal.create(params[:animal])

		if @animal.save #if the new animal saved
			redirect_to animals_path	#then go to the animals page
		else
			render :new #then create a new template
		end
	end
	def update
		@animal = Animal.find(params[:id])

		if @animal.update_attributes(params[:animal]) #allows you to update attributes in mass
			redirect_to @animal 
		else
			render :edit
		end
	end
	def destroy
		animal = Animal.find(params[:id])
		animal.delete
		redirect_to animals_path
	end
end
