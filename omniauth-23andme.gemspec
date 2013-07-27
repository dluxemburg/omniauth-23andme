# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-23andme/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Daniel Luxemburg"]
  gem.email         = ["daniel@danielluxemburg.com"]
  gem.description   = %q{OmniAuth for 23andMe.}
  gem.summary       = %q{Unofficial OmniAuth strategy for 23andMe.}
  gem.homepage      = "https://github.com/dluxemburg/omniauth-23andme"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-23andme"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::TwentyThreeAndMe::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
