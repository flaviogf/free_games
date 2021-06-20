describe FreeGames::Game do
  subject(:game) do
    FreeGames::Game.new id: SecureRandom.uuid,
                        title: "Genshin Impact",
                        started_at: Time.parse("2020-06-12"),
                        ended_at: Time.parse("2020-06-13")
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

  it "should have method to_json" do
    expect(game.respond_to?(:to_json)).to be true
  end

  context "to_json" do
    it "should return a hash" do
      expect(game.to_json).to be_a Hash
    end

    it "should have key id" do
      expect(game.to_json.has_key?(:id)).to be true
    end

    it "should have key title" do
      expect(game.to_json.has_key?(:title)).to be true
    end

    it "should have key started_at" do
      expect(game.to_json.has_key?(:started_at)).to be true
    end

    it "should have key ended_at" do
      expect(game.to_json.has_key?(:ended_at)).to be true
    end
  end
end
