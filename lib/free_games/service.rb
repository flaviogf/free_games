module FreeGames
  class HttpService
    DEFAULT_API_URL = "https://store-site-backend-static.ak.epicgames.com/freeGamesPromotions?locale=pt-BR&country=BR&allowCountries=BR"

    EPIC_GAMES_FREE_GAMES_API_URL = ENV['EPIC_GAMES_API_URL'] || DEFAULT_API_URL

    def fetch
      response = Faraday.get EPIC_GAMES_FREE_GAMES_API_URL

      payload = JSON.parse(response.body)

      select_games = ->(payload) {
        payload.dig('data', 'Catalog', 'searchStore', 'elements')
      }

      select_promotion_dates = ->(game_payload) {
        return { 'startDate' => nil, 'endDate' => nil } unless game_payload["promotions"]

        offers = game_payload['promotions']['promotionalOffers'].first

        return { 'startDate' => nil, 'endDate' => nil } unless offers

        offers['promotionalOffers'].first
      }

      select_promotion_started_date = ->(game_payload) {
        start_date = select_promotion_dates.(game_payload)['startDate']

        Time.parse(start_date) if start_date
      }

      select_promotion_end_date = ->(game_payload) {
        end_date = select_promotion_dates.(game_payload)['endDate']

        Time.parse(end_date) if end_date
      }

      games = select_games.(payload).map do |game|
        Game.new id: game['id'],
                 title: game['title'],
                 started_at: select_promotion_started_date.(game),
                 ended_at: select_promotion_end_date.(game)
      end

      games.reject { |it| it.started_at.nil? || it.ended_at.nil? }
    end
  end
end
