require "spec_helper"

describe FreeGames::Search do
  subject(:search) do
    FreeGames::Search.new nil
  end

  it "should have method execute" do
    expect(search.respond_to?(:execute)).to be true
  end

  it "should return a list of message" do
    messages = search.execute

    expect(messages.size).to be 1

    expect(messages[0]).to be_a FreeGames::Message
  end
end
