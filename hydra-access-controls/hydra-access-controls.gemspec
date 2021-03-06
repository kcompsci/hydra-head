# -*- encoding: utf-8 -*-
version = File.read(File.expand_path("../../HYDRA_VERSION", __FILE__)).strip

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Beer", "Justin Coyne", "Matt Zumwalt"]
  gem.email         = ["hydra-tech@googlegroups.com"]
  gem.description   = %q{Access controls for project hydra}
  gem.summary       = %q{Access controls for project hydra}
  gem.homepage      = "http://projecthydra.org"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hydra-access-controls"
  gem.require_paths = ["lib"]
  gem.version       = version

  gem.required_ruby_version = '>= 1.9.3'

  gem.add_dependency 'activesupport'
  gem.add_dependency "active-fedora", '>= 6.0.0.rc2'
  gem.add_dependency 'cancan'
  gem.add_dependency 'deprecation'
  gem.add_dependency 'blacklight'

  gem.add_development_dependency("rake")
  gem.add_development_dependency 'rspec'

  
end
