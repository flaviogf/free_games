require "spec_helper"

RSpec.describe FreeGames::GameAdapter do
  subject(:game) do
    FreeGames::Game.new id: SecureRandom.uuid,
                        title: "Genshin Impact",
                        started_at: Time.parse("2020-06-12"),
                        ended_at: Time.parse("2020-06-13")
  end

  subject(:game_adapter) do
    FreeGames::GameAdapter.new game
  end

  it "should have property uid" do
    expect(game_adapter.respond_to?(:uid)).to be true
  end

  it "should have property updateDate" do
    expect(game_adapter.respond_to?(:updateDate)).to be true
  end

  it "should have property titleText" do
    expect(game_adapter.respond_to?(:titleText)).to be true
  end

  it "should have property mainText" do
    expect(game_adapter.respond_to?(:mainText)).to be true
  end

  it "should have property redirectionUrl" do
    expect(game_adapter.respond_to?(:redirectionUrl)).to be true
  end

  it "should have method to_json" do
    expect(game_adapter.respond_to?(:to_json)).to be true
  end

  context "uid" do
    it "should return id of the game" do
      expect(game_adapter.uid).to eq(game.id)
    end
  end

  context "titleText" do
    it "should return title of the game" do
      expect(game_adapter.titleText).to eq(game.title)
    end
  end

  context "mainText" do
    it "should return friendly message" do
      expect(game_adapter.mainText).to eq("Jogo Genshin Impact. Disponível entre os dias 12/06/2020 e 13/06/2020")
    end
  end

  context "to_json" do
    it "should return a Hash" do
      expect(game_adapter.to_json).to be_a Hash
    end

    it "should have property uid" do
      expect(game_adapter.to_json.has_key?(:uid)).to be true
    end

    it "should have property updateDate" do
      expect(game_adapter.to_json.has_key?(:updateDate)).to be true
    end

    it "should have property titleText" do
      expect(game_adapter.to_json.has_key?(:titleText)).to be true
    end

    it "should have property mainText" do
      expect(game_adapter.to_json.has_key?(:mainText)).to be true
    end

    it "should have property redirectionUrl" do
      expect(game_adapter.to_json.has_key?(:redirectionUrl)).to be true
    end
  end
end
