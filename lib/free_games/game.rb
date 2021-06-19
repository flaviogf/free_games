module FreeGames
  class Game < Struct.new(:id, :title, :started_at, :ended_at, keyword_init: true)
  end
end
