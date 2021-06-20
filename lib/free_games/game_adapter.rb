module FreeGames
  class GameAdapter
    def initialize(game)
      @game = game
    end

    def uid
      @game.id
    end

    def updateDate
      Time.now.utc
    end

    def titleText
      @game.title
    end

    def mainText
      "Jogo #{@game.title}. Disponível entre os dias #{@game.started_at.strftime('%d/%m/%Y')} e #{@game.ended_at.strftime('%d/%m/%Y')}"
    end

    def redirectionUrl
      ""
    end

    def to_json
      {
        uid: uid,
        updateDate: updateDate.iso8601,
        titleText: titleText,
        mainText: mainText,
        redirectionUrl: redirectionUrl,
      }
    end
  end
end
