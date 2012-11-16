class HomeController < ApplicationController
	def a
		# @letter
	end
	def b
		# @letter
	end
	def c
		# @letter
	end
	def switch
		# @letter = params[:letter].upcase
		# case @letter
		# when "A"
		#   redirect_to a_path
		# when "B" 
		#   redirect_to b_path
		# when "C"
		#   redirect_to c_path
		# end
		redirect_to send("#{params[:letter]}_path") #meta-programming - send method does the same redirecting stuff dynamically
	end
end