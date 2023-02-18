
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
    def getTicket(query) 
      url="http://api.tradingphysics.com/getticket?C=#{@customer_number}&P=#{@hash}?#{query}"
      return(Net::HTTP.get(URI.parse(url)));  
    end
    # Get an array of date strings, where tradingphysics has data
    def getDates()
      url="http://api.tradingphysics.com/getdates?type=orderflow"
      return(Net::HTTP.get(URI.parse(url)).gsub("-").split("\r\n"));
    end
    # Gets the data for a given stock for a given day, and returns it 
    def getData(type,format,date,stock,compression="none")
     query="getdata?type=#{type}&format=#{format}&date=#{date}&stock=#{stock}&compression=#{compression}"
     ticket=getTicket(query)
     url="http://api.tradingphysics.com/#{query}&t=#{ticket}"