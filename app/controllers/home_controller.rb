class HomeController < ApplicationController
  # Get the API key from the .config file
  conf = File.open(".config")
  key = conf.read.chomp
  conf.close
  @@api = StockQuote::Stock.new(api_key: key)

  def index
    if params[:ticker] == ""
      @nothing = "You must provide a symbol"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue RuntimeError, NoMethodError
        @junk = "Invaild symbol"
      end
    end
  end

  def about
  end
end
