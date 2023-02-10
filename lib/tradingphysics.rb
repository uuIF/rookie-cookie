
require "tradingphysics/version"
require "net/http"

module Tradingphysics
  #Used for getting data from the server
  class TradingPhysics
    # Construct the trading physics class with the customer_number and hash	
    def initialize(customer_number, hash)
      @customer_number=customer_number
      @hash=hash
    end 
    # Get the ticket for authenticating the given query