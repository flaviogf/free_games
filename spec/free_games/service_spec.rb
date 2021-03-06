require "spec_helper"

RSpec.describe FreeGames::HttpService do
  subject(:service) do
    FreeGames::HttpService.new
  end

  it "should have method fetch" do
    expect(service.respond_to?(:fetch)).to be true
  end

  it "should return a list of games" do
    VCR.use_cassette("games") do
      games = service.fetch

      expect(games.count).to be 2

      game = games.first

      expect(game).to be_a FreeGames::Game
    end
  end
end
