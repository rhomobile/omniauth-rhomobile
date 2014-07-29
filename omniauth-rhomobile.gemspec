# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/rhomobile/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-rhomobile"
  spec.version       = Omniauth::Rhomobile::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Rhomobile Dev Team"]
  spec.email         = ["dev@rhomobile.com"]
  spec.description   = %q{OmniAuth strategy for Rhomobile}
  spec.summary       = %q{An Omniauth strategy to integrate your application with Rhomobile}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '~> 1.0'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'coveralls'
end
