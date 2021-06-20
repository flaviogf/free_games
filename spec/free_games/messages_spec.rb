describe FreeGames::Messages do
  subject(:message) do
    FreeGames::Message.new uid: SecureRandom.uuid,
                           updateDate: Time.parse("2020-06-12"),
                           titleText: "Genshin Impact",
                           mainText: "Jogo Genshin Impact. Disponível entre os dias 12/06/2020 e 13/06/2020",
                           redirectionUrl: ""
  end

  subject(:messages) do
    FreeGames::Messages.new [message]
  end

  it "should be an enumerable" do
    expect(messages).to be_a Enumerable
  end

  it "should have 2 elements" do
    expect(messages.count).to eq(2)
  end

  it "should have method to_json" do
    expect(messages.respond_to?(:to_json)).to be true
  end

  context "first" do
    context "titleText" do
      it "should be the title of the messages" do
        expect(messages.first.titleText).to eq("Jogos")
      end
    end

    context "mainText" do
      it "should be the description of the messages" do
        expect(messages.first.mainText).to eq("Você tem novos jogos para resgatar.")
      end
    end
  end

  context "to_json" do
    it "should return a string" do
      expect(messages.to_json).to be_a String
    end

    it "should return a json representation of a list of messages" do
      parsed_messages = JSON.parse(messages.to_json)

      expect(parsed_messages.count).to eq(2)

      parsed_message = parsed_messages.first

      expect(parsed_message.has_key?("uid")).to be true
      expect(parsed_message.has_key?("updateDate")).to be true
      expect(parsed_message.has_key?("titleText")).to be true
      expect(parsed_message.has_key?("mainText")).to be true
      expect(parsed_message.has_key?("redirectionUrl")).to be true
    end
  end
end
