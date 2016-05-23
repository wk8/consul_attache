# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'consul_attache/version'

Gem::Specification.new do |spec|
  spec.name          = 'consul_attache'
  spec.version       = ConsulAttache::VERSION
  spec.authors       = ['Jean Rouge']
  spec.email         = ['jer329@cornell.edu']

  spec.summary       = %q{A CLI tool and Ruby gem adding some sugar to Consul, most notably degraded services}
  spec.homepage      = 'https://github.com/wk8/consul_attache'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'thor', '~> 0.19'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
