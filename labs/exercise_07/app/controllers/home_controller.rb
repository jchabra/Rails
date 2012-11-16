class HomeController < ApplicationController
	def get_quote
	end
	def results
		@symbol = params[:symbol].upcase
		@number_of_quotes = params[:number].to_i
		@quotes = []

		quote_type = YahooFinance::StandardQuote

		(1..@number_of_quotes).each do |number|
			@quotes << YahooFinance::get_quotes( quote_type, @symbol )[@symbol].lastTrade
			sleep(1)
		end

		@average_price = @quotes.inject(&:+)/@number_of_quotes
	end
end