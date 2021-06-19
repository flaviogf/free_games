module FreeGames
  class Search
    def initialize(request)
      @request = request
    end

    def build_response
      [200, { "Content-Type" => "application/json" }, [JSON.dump(execute.map(&:to_h))]]
    end

    def execute
      message = Message.new(
        uid: SecureRandom.uuid,
        updateDate: Time.now.utc.iso8601,
        titleText: "Genshin Impact",
        mainText: "Jogo Genshin Impact. Disponível entre os dias 12/06/2020 e 13/06/2020",
        redirectionUrl: ""
      )

      [message]
    end
  end
end
