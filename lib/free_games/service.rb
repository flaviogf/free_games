module FreeGames
  class HttpService
    def fetch
      game = Game.new id: SecureRandom.uuid,
                      title: "Genshin Impact",
                      started_at: Time.now.utc,
                      ended_at: Time.now.utc

      [game]
    end
  end
end
