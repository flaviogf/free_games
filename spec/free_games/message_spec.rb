require "spec_helper"

RSpec.describe FreeGames::Message do
  subject(:message) do
    FreeGames::Message.new(
      uid: SecureRandom.uuid,
      updateDate: Time.now.utc.to_s,
      titleText: "Genshin Impact",
      mainText: "Jogo Genshin Impact. Disponível entre os dias 12/06/2020 e 13/06/2020",
      redirectionUrl: ""
    )
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
end
