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
end
