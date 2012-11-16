class NameController < ApplicationController
	def start
	end
	def create
		@name = params[:name] #needs to be instance variable for VIEW documents to use it. 
		@tally = @name.length
	end
end