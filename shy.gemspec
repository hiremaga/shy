# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'shy'
  spec.version       = '0.0.2'
  spec.authors       = ['Abhi Hiremagalur']
  spec.email         = %w[abhijit@hiremaga.com]
  spec.description   = 'Shy objects are private, dependant and dependable'
  spec.summary       = 'Shy objects are private, dependant and dependable'
  spec.homepage      = 'http://github.com/hiremaga/shy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w[lib]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
