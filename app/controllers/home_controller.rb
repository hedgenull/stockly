# Get the API key from the .config file
conf = File.open("../../.config")
key = conf.read.chomp
conf.close

class HomeController < ApplicationController
  @@api = StockQuote::Stock.new(api_key: key)

  def index
  end

  def about
  end
end
