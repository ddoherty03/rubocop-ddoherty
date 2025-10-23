# Optional code file — RuboCop only needs the config files, but having a lib file
# with a version constant is conventional for gems.
require_relative 'ddoherty/version'

module RuboCop
  module Ddoherty
    # no runtime code required for a config-only gem
  end
end
