
# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tradingphysics/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Gershon Bialer"]
  gem.email         = ["gershon.bialer@gmail.com"]
  gem.description   = %q{Access the trading physics api for stock information}
  gem.summary       = %q{Trading physics api}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tradingphysics"
  gem.require_paths = ["lib"]
  gem.version       = Tradingphysics::VERSION
end