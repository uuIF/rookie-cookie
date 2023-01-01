
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

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request