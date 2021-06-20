require "spec_helper"

describe FreeGames::Search do
  subject(:game) do
    FreeGames::Game.new id: SecureRandom.uuid,
                        title: "Genshin Impact",
                        started_at: Time.parse("2020-06-12"),
                        ended_at: Time.parse("2020-06-13")
  end

  subject(:request) do
    double("request")
  end

  subject(:service) do
    double("service", :fetch => [game])
  end

  subject(:search) do
    FreeGames::Search.new request, service: service
  end

  it "should have method execute" do
    expect(search.respond_to?(:execute)).to be true
  end

  it "should return a list of message" do
    messages = search.execute

    expect(messages.count).to be 2

    message = messages.first

    expect(message.respond_to?(:uid)).to be true
    expect(message.respond_to?(:updateDate)).to be true
    expect(message.respond_to?(:titleText)).to be true
    expect(message.respond_to?(:mainText)).to be true
    expect(message.respond_to?(:redirectionUrl)).to be true
  end
end
