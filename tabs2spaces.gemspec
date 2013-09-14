# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tabs2spaces/version'

Gem::Specification.new do |spec|
  spec.name          = "tabs2spaces"
  spec.version       = Tabs2spaces::VERSION
  spec.authors       = ["Sergio Marin"]
  spec.email         = ["higher.vnf@gmail.com"]
  spec.description   = %q{Covert all tabs in spaces using the shell command expand}
  spec.summary       = %q{A gem to convert tabs2spaces in all files on a project}
  spec.homepage      = "http://github.com/highercomve/tabs2spaces"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = ['tabs2spaces']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
