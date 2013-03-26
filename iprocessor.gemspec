# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iprocessor/version'

Gem::Specification.new do |gem|
  gem.name          = "iprocessor"
  gem.version       = Iprocessor::VERSION
  gem.authors       = ["Moin Haidar"]
  gem.email         = ["moinhaidar@gmail.com"]
  gem.description   = %q{Image Processor}
  gem.summary       = %q{Image Processor}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'httparty'
end
