module FreeGames
  class Game < Struct.new(:id, :title, :started_at, :ended_at, keyword_init: true)
    def to_json
      {
        id: id,
        title: title,
        started_at: started_at.iso8601,
        ended_at: ended_at.iso8601,
      }
    end
  end
end
