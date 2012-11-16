class Main
	def self.run
		puts "Creating user:"
		puts "Name?"
		name = gets.chomp
		u1 = User.create(:name => name) # create a record in the database. This record will be the name you typed in and it will link with the user's name in the database.

		stock_names = [] # all of the stock names will be stored here.

		3.times do 
			puts "Creating a stock"
			puts "Symbol"
			symbol = gets.chomp.upcase
			stock_names << symbol 
		end
		while true
			sleep 1
			stock_names.each do |symbol|
				begin
					quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
					Stock.create(:symbol => symbol, :quote => quote)
					u1.stocks << stock
				rescue
				end
			end
		end
	end
end

