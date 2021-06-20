require "simplecov"
SimpleCov.start do
  add_filter "/spec/"
end

require "functions_framework/testing"

require "free_games"

RSpec.configure do |config|
  config.formatter = :documentation
end
