# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'look_and_feel/version'

Gem::Specification.new do |spec|
  spec.name          = 'look_and_feel'
  spec.version       = LookAndFeel::VERSION
  spec.authors       = ['Brad Herring']
  spec.email         = ['brad@bherville.com']

  spec.summary       = %q{Bherville Look and Feel CSS and Javascript.}
  spec.description   = %q{Bherville Look and Feel CSS and Javascript.}
  spec.homepage      = 'https://bitbucket.org/bherring/look-and-feel-gem'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
