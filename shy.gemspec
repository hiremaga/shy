# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "shy"
  spec.version       = "0.0.1"
  spec.authors       = ["Abhi Hiremagalur"]
  spec.email         = ["abhijit@hiremaga.com"]
  spec.description   = "A Shy is like a Struct, but private and instantiated with a Hash"
  spec.summary       = "A Shy is like a Struct, but private and instantiated with a Hash"
  spec.homepage      = "http://github.com/hiremaga/shy"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
