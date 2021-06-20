module FreeGames
  class Message < Struct.new(:uid, :updateDate, :titleText, :mainText, :redirectionUrl, keyword_init: true)
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
