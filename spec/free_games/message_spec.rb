require "spec_helper"

RSpec.describe FreeGames::Message do
  subject(:message) do
    FreeGames::Message.new uid: SecureRandom.uuid,
                           updateDate: Time.parse("2020-06-12"),
                           titleText: "Genshin Impact",
                           mainText: "Jogo Genshin Impact. Disponível entre os dias 12/06/2020 e 13/06/2020",
                           redirectionUrl: ""
  end

  it "should have property uid" do
    expect(message.respond_to?(:uid)).to be true
  end

  it "should have property updateDate" do
    expect(message.respond_to?(:updateDate)).to be true
  end

  it "should have property titleText" do
    expect(message.respond_to?(:titleText)).to be true
  end

  it "should have property mainText" do
    expect(message.respond_to?(:mainText)).to be true
  end

  it "should have property redirectionUrl" do
    expect(message.respond_to?(:redirectionUrl)).to be true
  end

  it "should have method to_json" do
    expect(message.respond_to?(:to_json)).to be true
  end

  context "to_json" do
    it "should return a Hash" do
      expect(message.to_json).to be_a Hash
    end

    it "should have key uid" do
      expect(message.to_json.has_key?(:uid)).to be true
    end

    it "should have key updateDate" do
      expect(message.to_json.has_key?(:updateDate)).to be true
    end

    it "should have key titleText" do
      expect(message.to_json.has_key?(:titleText)).to be true
    end

    it "should have key mainText" do
      expect(message.to_json.has_key?(:mainText)).to be true
    end

    it "should have key redirectionUrl" do
      expect(message.to_json.has_key?(:redirectionUrl)).to be true
    end
  end
end
