describe FreeGames::HttpService do
  subject(:service) do
    FreeGames::HttpService.new
  end

  it "should have method fetch" do
    expect(service.respond_to?(:fetch)).to be true
  end

  it "should return a list of games" do
    games = service.fetch

    expect(games.size).to be 1

    game = games[0]

    expect(game).to be_a FreeGames::Game
  end
end
