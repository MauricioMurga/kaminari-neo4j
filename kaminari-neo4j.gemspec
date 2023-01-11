# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kaminari/active_graph/version'

Gem::Specification.new do |spec|
  spec.name          = 'kaminari-neo4j'
  spec.version       = Kaminari::ActiveGraph::VERSION
  spec.authors       = ['Dieter Pisarewski']
  spec.email         = ['dieter.pisarewski@gmail.com']
  spec.summary       = 'ActiveGraph support for kaminari'
  spec.description   = 'Adds ActiveGraph support to kaminari'
  spec.homepage      = 'https://github.com/megorei/kaminari-neo4j'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '>= 7.0.4'
  spec.add_dependency "activegraph", "~> 11.1.0.beta.1"
  spec.add_dependency  "neo4j-ruby-driver", "~> 4.4.0.alpha.7"
  spec.add_dependency 'kaminari', '>= 1.2.2'
end
