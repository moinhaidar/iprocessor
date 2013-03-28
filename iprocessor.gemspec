# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iprocessor/version'
require 'iprocessor/conf'

Gem::Specification.new do |gem|
  gem.name          = "iprocessor"
  gem.version       = Iprocessor::VERSION
  gem.authors       = ['Moin Haidar']
  gem.email         = ['moinhaidar@gmail.com']
  gem.description   = %q{ Ruby Wrapper for Card Reader API }
  gem.summary       = %q{ Ruby Wrapper for Card Reader API }
  gem.homepage      = ''

  # ensures that any files tracked in the git repo will be included.  
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  #Files that are used for testing the gem. Supports TestUnit, MiniTest, RSpec, and Cucumber
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  #Directories within the gem that need to be loaded in order to load the gem.
  gem.require_paths = ['lib']
  #Specify any dependencies here
  gem.add_dependency 'httparty'
  
end
