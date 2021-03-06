# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'usersnap-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "usersnap-rails"
  spec.version       = UsersnapRails::VERSION
  spec.authors       = ["r11runner"]
  spec.email         = ["r11runner@gmail.com"]
  spec.summary       = %q{Integrate the Usersnap-widget with Rails}
  spec.homepage      = "https://github.com/r11runner/usersnap-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">=4.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
