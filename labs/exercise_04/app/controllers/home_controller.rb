class HomeController < ApplicationController
  def stock
  end

  def output
    symbols = params[:stocks].upcase.split(', ')
    @stocks = symbols.map{|symbol| YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol]}
  end
end