class HomeController < ApplicationController
	def index
	end
	def result
		@symbol = params[:symbol].upcase
		@number_of_quotes = params[:number].to_i
		@quotes = []

		quote_type = YahooFinance::StandardQuote

		(1..@number_of_quotes).each do |number|
			@quotes << YahooFinance::get_quotes( quote_type, @symbol )[@symbol].lastTrade
			sleep(1)
		end

		@average_price = @quotes.inject(&:+)/@number_of_quotes

		@quotes.each do |q|
			Stock.create(:symbol => @symbol, :price => q.to_f)
		end
	end
	def portfolio
		@stocks = Stock.select(:symbol).uniq #this will find all of the distinct values (uniq)
		symbols = stocks.map{|stock| stock.symbol} #this takes the array in the above line and turns into an array of symbol names (ex: AAPL, GOOG, etc.)
		@output = {}
		symbols.each do |symbol|
			@output[symbol] = Stock.where(:symbol => symbol)
		end
	end
end