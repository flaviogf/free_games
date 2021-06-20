module FreeGames
  class Messages
    include Enumerable

    def initialize(messages)
      messages.unshift Message.new uid: SecureRandom.uuid,
                                   updateDate: Time.now.utc, 
                                   titleText: "Jogos",
                                   mainText: "Você tem novos jogos para resgatar.",
                                   redirectionUrl: ""

      @messages = messages
    end

    def each(&block)
      @messages.each(&block)
    end

    def to_json
      @messages.map { |it| it.to_json }.to_json
    end
  end
end
