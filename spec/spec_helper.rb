require "simplecov"
SimpleCov.start do
  add_filter "spec/"
end

require "vcr"
VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
end

require "functions_framework/testing"

require "free_games"

RSpec.configure do |config|
  config.formatter = :documentation
end
