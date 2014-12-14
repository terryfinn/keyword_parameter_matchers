# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'keyword_parameter_matchers/version'

Gem::Specification.new do |spec|
  spec.name          = 'keyword_parameter_matchers'
  spec.version       = KeywordParameterMatchers::VERSION
  spec.authors       = ['Terry Finn']
  spec.email         = ['terry@terryrfinn.com']
  spec.summary       = %q{Simple matchers for method keyword parameters.}
  spec.homepage      = 'https://github.com/terryfinn/keyword_parameter_matchers'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
end
