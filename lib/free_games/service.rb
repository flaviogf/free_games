module FreeGames
  class HttpService
    def fetch
      game = Game.new(
        id: SecureRandom.uuid,
        title: "Genshin Impact",
        started_at: Time.now.utc.iso8601,
        ended_at: Time.now.utc.iso8601,
      )

      [game]
    end
  end
end
