
# Tradingphysics

## Installation

Add this line to your application's Gemfile:

    gem 'tradingphysics'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tradingphysics

## Usage

require 'tradingphysics'

 # Get dates where we have data
t=Tradingphysics::TradingPhysics.new("YOUR TRADING PHYSICS USERNAME","TRADINGPHYSICS HASH")
dates=t.getDates() 

 # Get OHLCV in CSV format for 2012-06-11 for symbol QQQQ
d=t.getData('OHLCV','CSV','20120611',"QQQ") 

## Contributing