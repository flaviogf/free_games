module FreeGames
  class Search
    def initialize(request)
      @request = request
    end

    def build_response
      Rack::Response.new JSON.dump(execute.map(&:to_h)), 200, { "Content-Type" => "application/json" } 
    end

    def execute
      message = Message.new(
        uid: SecureRandom.uuid,
        updateDate: Time.now.utc.to_s,
        titleText: "Genshin Impact",
        mainText: "Jogo Genshin Impact. Disponível entre os dias 12/06/2020 e 13/06/2020",
        redirectionUrl: ""
      )

      [message]
    end
  end
end
