class HomeController < ApplicationController
	def start
	end
	def finish
		# raise params.inspect
		@number = params[:number]
	end
end
