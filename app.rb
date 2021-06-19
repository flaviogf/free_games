$LOAD_PATH.unshift File.expand_path("lib", __dir__) unless $LOAD_PATH.include? File.expand_path("lib", __dir__)

require "functions_framework"

require "free_games"

FunctionsFramework.http("search") do |request|
  FreeGames::Search.new(request).build_response
end
