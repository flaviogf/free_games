describe FreeGames::Game do
  subject(:game) do
    FreeGames::Game.new(
      id: SecureRandom.uuid,
      title: "Genshin Impact",
      started_at: Time.now.utc.iso8601,
      ended_at: Time.now.utc.iso8601,
    )
  end

  it "should have property id" do
    expect(game.respond_to?(:id)).to be true
  end

  it "should have property title" do
    expect(game.respond_to?(:title)).to be true
  end

  it "should have property started_at" do
    expect(game.respond_to?(:started_at)).to be true
  end

  it "should have property ended_at" do
    expect(game.respond_to?(:ended_at)).to be true
  end
end
