# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "test_gem"
  spec.version       = TestGem::VERSION
  spec.authors       = ["authors_name"]
  spec.email         = ["email_test"]
  spec.summary       = %q{Test gem}
  spec.description   = %q{A first test script for RubyGem.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
