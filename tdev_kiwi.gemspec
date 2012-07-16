# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tdev_kiwi/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["TotenDev"]
  gem.email         = ["support@totendev.com"]
  gem.summary       = %q{Ruby gem to send messages with Kiwi}
  gem.homepage      = "https://github.com/TotenDev/Kiwi-LibRuby"
  
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "tdev_kiwi"
  gem.require_paths = ["lib"]
  gem.version       = Kiwi::VERSION
  
  gem.add_development_dependency 'travis-lint'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'growl'
end
