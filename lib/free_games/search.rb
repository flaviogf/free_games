module FreeGames
  class Search
    def initialize(request, service: HttpService.new)
      @request = request
      @service = service
    end

    def build_response
      [200, { "Content-Type" => "application/json" }, [messages.to_json]]
    end

    def execute
      messages
    end

    private

    def messages
      Messages.new games.map { |it| GameAdapter.new it }
    end

    def games
      @service.fetch
    end
  end
end
