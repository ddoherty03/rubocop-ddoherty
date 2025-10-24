Gem::Specification.new do |s|
  # Load version constant from lib without loading any heavy deps.
  require_relative 'lib/rubocop/ddoherty/version'

  s.name          = 'rubocop-ddoherty'
  s.version       = RuboCop::Ddoherty::VERSION
  s.summary       = 'Shared RuboCop config for my projects'
  s.description   = 'Centralized RuboCop configuration to be reused via inherit_gem.'
  s.authors       = ['Daniel E. Doherty']
  s.email         = ['ded@ddoherty.net']
  s.homepage      = 'https://github.com/yourname/rubocop-ddoherty'
  s.license       = 'MIT'
  s.require_paths = ['lib']

  # include config files, lib, README, LICENSE
  s.files = Dir['lib/**/*', 'config/**/*', 'README.org', 'LICENSE.txt', 'rubocop-ddoherty.gemspec']

  # runtime dependencies: none required for config gem itself
  # IMPORTANT: declare the RuboCop plugin gems as runtime dependencies so
  # consuming projects automatically get them when they install this gem.
  # Runtime dependencies: ensure consumers get the plugins automatically.
  # Use conservative constraints that allow minor/patch updates but avoid
  # pulling an incompatible major.
  s.add_runtime_dependency 'rubocop-rspec',       '~> 2.0'
  s.add_runtime_dependency 'rubocop-shopify',     '~> 2.0'
  s.add_runtime_dependency 'rubocop-performance', '~> 1.0'
  s.add_runtime_dependency 'rubocop-rake',        '>= 0.7'
end
