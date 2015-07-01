$:.push File.expand_path('../lib', __FILE__)
require 'wo/version'

Gem::Specification.new do |s|
  s.name        = 'wo'
  s.version     = WO::VERSION
  s.authors     = ['Masahiro Saito']
  s.email       = ['camelmasa@gmail.com']
  s.summary     = 'Ruby client for wo server'
  s.description = 'Ruby client for wo server'
  s.homepage    = 'https://github.com/wo-app/wo'
  s.license     = 'MIT'

  s.files = `git ls-files`.split($/)
  s.executables = %w(wo)
  s.require_paths = ['lib']

  s.add_runtime_dependency 'faraday', '~> 0.9.0'
  s.add_runtime_dependency 'thor', '~> 0.19.1'
end
